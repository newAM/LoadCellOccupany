#include <SPI.h>
#include <ESP8266WiFi.h>
#include <PubSubClient.h>
#include "HX711.h"
#include <ArduinoOTA.h>

// HX711 pin connection
#define DOUT D3
#define CLK  D4

// HX711 sample settings
#define CALIBRATION   -22750 // ADC bits to Kg conversion factor
#define NUM_SAMPLES       30 // number of samples to take per data point
#define SAMPLE_PERIOD    50  // sample period in ms
#define RESULT_WIDTH       5 // number of characters in result
#define RESOLUTION         0 // number of characters after the decimal
#define PRECISION        1   // precision of the result

// connection settings
#define TIMEOUT   5000 // connection failure timeout in ms
#define SER_BAUD  9600 // serial baud rate
#define MQTT_PORT 1883 // MQTT broker port
#define MQTT_CLIENT_ID "loadcell" // device client ID

// Wifi settings
#define WIFI_CLIENT_ID "wifiname"
#define SSID_NAME "yourssid" // SSID network wifi name to connect to
#define SSID_PASSWORD "yourpassword" // Wifi password

// MQTT topics
#define TOPIC_BASE "homeassistant/sensor/masterbed_vio" // base topic
#define TOPIC_LOAD TOPIC_BASE "/load"  // topic to publish samples on
#define TOPIC_TARE TOPIC_BASE "/tare"  // topic to receive tare commands on
#define MQTT_USER "xxxxxx" // MQTT username
#define MQTT_PASS "xxxxx" // MQTT password
#define MQTT_HOST IPAddress(192, 168, 1, 100) // MQTT broker ip

// Over the air updates (always handy after you place it in a obscure place later)
#define OTA_PATCH 1 // Set to 0 if you don't want to update your code over-the-air
#define OTA_PASS "otapassword"

WiFiEventHandler gotIpEventHandler, disconnectedEventHandler;

WiFiClient scaleClient;
PubSubClient mqttClient(scaleClient);

// HX711 load cell ADC
HX711 scale;

// reconnects to the MQTT broker
void reconnect()
{
    // loop while disconnected
    while (!mqttClient.connected() && WiFi.isConnected())
    {
        // attempt to connect
        Serial.println("Attempting to establish connection to MQTT broker...");
        if (mqttClient.connect(MQTT_CLIENT_ID, MQTT_USER, MQTT_PASS))
        {
            // print connection messaged for debug
            Serial.println("Connection established to MQTT broker");
            mqttClient.publish(TOPIC_BASE, "connected");

            // subscribe to control topic
            mqttClient.subscribe(TOPIC_TARE);
        }
        else
        {
            Serial.print("Failed to connect: ");

            // print client state
            switch (mqttClient.state())
            {
                case MQTT_CONNECTION_TIMEOUT:
                    Serial.println("MQTT_CONNECTION_TIMEOUT");
                    break;
                case MQTT_CONNECTION_LOST:
                    Serial.println("MQTT_CONNECTION_LOST");
                    break;
                case MQTT_CONNECT_FAILED:
                    Serial.println("MQTT_CONNECT_FAILED");
                    break;
                case MQTT_DISCONNECTED:
                    Serial.println("MQTT_DISCONNECTED");
                    break;           
                case MQTT_CONNECTED:
                    Serial.println("MQTT_CONNECTED");
                    break;
                case MQTT_CONNECT_BAD_PROTOCOL:
                    Serial.println("MQTT_CONNECT_BAD_PROTOCOL");
                    break;
                case MQTT_CONNECT_BAD_CLIENT_ID:
                    Serial.println("MQTT_CONNECT_BAD_CLIENT_ID");
                    break;
                case MQTT_CONNECT_UNAVAILABLE:
                    Serial.println("MQTT_CONNECT_UNAVAILABLE");
                    break;
                case MQTT_CONNECT_BAD_CREDENTIALS:
                    Serial.println("MQTT_CONNECT_BAD_CREDENTIALS");
                    break;
                case MQTT_CONNECT_UNAUTHORIZED:
                    Serial.println("MQTT_CONNECT_UNAUTHORIZED");
                    break;
                default:
                    Serial.println("MQTT_STATE_UNKNOWN");
                    break;
            }

            // delay before next attempt
            delay(TIMEOUT);
        } 
    }
}

// callback function for handling new messages on subscribed topics
void callback(char* topic, byte* payload, unsigned int length)
{
    // zero out scale offset
    if (!strcmp(topic, TOPIC_TARE))
    {
        Serial.println("Zeroing...");
        scale.tare();
    }
}

void setup()
{
    scale.begin(DOUT, CLK);
    IPAddress mqttBroker(MQTT_HOST);

    // open serial connection
    Serial.begin(SER_BAUD);

    gotIpEventHandler = WiFi.onStationModeGotIP([](const WiFiEventStationModeGotIP& event)
    {
      Serial.print("Station connected, IP: ");
      Serial.println(WiFi.localIP());
    });
  
    disconnectedEventHandler = WiFi.onStationModeDisconnected([](const WiFiEventStationModeDisconnected& event)
    {
      Serial.println("Station disconnected, will reconnect or still trying");
    });
    // connect with DHCP
    WiFi.hostname(WIFI_CLIENT_ID);
    Serial.printf("Connecting to %s ...\n", SSID_NAME);
    WiFi.begin(SSID_NAME, SSID_PASSWORD);

    // configure MQTT broker
    mqttClient.setServer(mqttBroker, MQTT_PORT);

    // set callback function
    mqttClient.setCallback(callback);

    // set scale calibration
    scale.set_scale(CALIBRATION);

    // zero out scale
    scale.tare();
    if (OTA_PATCH == 1) {
      ArduinoOTA.onStart([]() {
        String type;
        if (ArduinoOTA.getCommand() == U_FLASH) {
          type = "sketch";
        } else { // U_SPIFFS
          type = "filesystem";
        }
  
        Serial.println("Start updating " + type);
      });
      ArduinoOTA.onEnd([]() {
        Serial.println("\nEnd");
      });
      ArduinoOTA.onProgress([](unsigned int progress, unsigned int total) {
        Serial.printf("Progress: %u%%\r", (progress / (total / 100)));
      });
      ArduinoOTA.onError([](ota_error_t error) {
        Serial.printf("Error[%u]: ", error);
        if (error == OTA_AUTH_ERROR) {
          Serial.println("Auth Failed");
        } else if (error == OTA_BEGIN_ERROR) {
          Serial.println("Begin Failed");
        } else if (error == OTA_CONNECT_ERROR) {
          Serial.println("Connect Failed");
        } else if (error == OTA_RECEIVE_ERROR) {
          Serial.println("Receive Failed");
        } else if (error == OTA_END_ERROR) {
          Serial.println("End Failed");
        }
      });
  
      ArduinoOTA.setHostname(WIFI_CLIENT_ID);
      ArduinoOTA.setPassword(OTA_PASS);
  
  
      ArduinoOTA.begin();
    }
}

void loop()
{
    if (WiFi.isConnected() && (OTA_PATCH != 0)) {
      ArduinoOTA.handle();
    }
    static uint32_t timer   = 0; // sample timer
    static uint8_t  samples = 0; // number of samples taken
    static float    avg     = 0; // load average
    static float    oldAvg  = 0; // stores the past average

    // connect if disconnected
    if (!mqttClient.connected())
    {
        if (WiFi.isConnected()) {
          reconnect();
        }
    }

    // take sample
    if (millis() - timer >= SAMPLE_PERIOD)
    {
        avg += scale.get_units();
        samples++;

        if (samples >= NUM_SAMPLES)
        {
            // buffer for the sample as a string
            char result[RESULT_WIDTH + 1]; 

            // average the samples
            avg /= samples;

            // if the result is negative, just make it 0.
            if (avg < 0) {
              avg = 0;
            }
            
            // transmit only if value has changed
            if (abs(avg - oldAvg) > PRECISION)
            {
                // convert the float to a string
                dtostrf(avg, RESULT_WIDTH, RESOLUTION, result);

                // publish string

                Serial.print("Pushing new result: ");
                Serial.println(result);
                mqttClient.publish(TOPIC_LOAD, result);

                // store past transmission
                oldAvg = avg;
            }

            // clear variables
            avg     = 0;
            samples = 0;
        }

        // reset timer
        timer = millis();
    }

    // maintain connection
    mqttClient.loop();
}
