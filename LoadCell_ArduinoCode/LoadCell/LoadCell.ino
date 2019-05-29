#include <SPI.h>
#include <Ethernet.h>
#include <PubSubClient.h>
#include "HX711.h"

// HX711 pin connection
#define DOUT 5
#define CLK  6

// HX711 sample settings
#define CALIBRATION   -22990 // ADC bits to Kg conversion factor
#define NUM_SAMPLES        3 // number of samples to take per data point
#define SAMPLE_PERIOD    100 // sample period in ms
#define RESULT_WIDTH       5 // number of characters in result
#define RESOLUTION         1 // number of characters after the decimal
#define PRECISION        0.1 // precision of the result

// connection settings
#define TIMEOUT   5000 // connection failure timeout in ms
#define SER_BAUD  9600 // serial baud rate
#define MQTT_PORT 1883 // MQTT broker port
#define MQTT_CLIENT_ID "bedCell" // device client ID

// MQTT topics
#define TOPIC_BASE "/home/bedroom/bed" // base topic
#define TOPIC_LOAD TOPIC_BASE "/load"  // topic to publish samples on
#define TOPIC_TARE TOPIC_BASE "/tare"  // topic to receive tare commands on

// client objects
EthernetClient ethClient;
PubSubClient mqttClient(ethClient);

// HX711 load cell ADC
HX711 scale;

// reconnects to the MQTT broker
void reconnect()
{
    // loop while disconnected
    while (!mqttClient.connected())
    {
        // attempt to connect
        Serial.println("Attempting to establish connection to MQTT broker...");
        if (mqttClient.connect(MQTT_CLIENT_ID)) 
        {
            // print connection messaged for debug
            Serial.println("Connection established");
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
    // network settings
    const uint8_t mac[] = {0x00, 0xAA, 0xBB, 0xCC, 0xDE, 0x02}; // device MAC
    IPAddress mqttBroker(10, 0, 0, 4); // MQTT broker IP

    // open serial connection
    Serial.begin(SER_BAUD);

    // print status
    Serial.println("Serial connected!");
    Serial.println("Configuring Ethernet with DHCP...");

    // connect with DHCP
    while (!Ethernet.begin(mac))
    {
        delay(TIMEOUT);
    }

    // print IP address
    Serial.println("Ethernet connected!");
    Serial.print("My IP: ");
    Serial.println(Ethernet.localIP());

    // configure MQTT broker
    mqttClient.setServer(mqttBroker, MQTT_PORT);

    // set callback function
    mqttClient.setCallback(callback);

    // set scale calibration
    scale.set_scale(CALIBRATION);

    // zero out scale
    scale.tare();
}

void loop()
{
    static uint32_t timer   = 0; // sample timer
    static uint8_t  samples = 0; // number of samples taken
    static float    avg     = 0; // load average
    static float    oldAvg  = 0; // stores the past average

    // connect if disconnected
    if (!mqttClient.connected())
    {
        reconnect();
    }

    // take sample
    if (millis() - timer >= SAMPLE_PERIOD)
    {
        avg += scale.get_units();
        samples++;

        if (samples >= NUM_SAMPLES)
        {
            // buffer for the sample as a string
            uint8_t result[RESULT_WIDTH + 1]; 

            // average the samples
            avg /= samples;

            // transmit only if value has changed
            if (abs(avg - oldAvg) > PRECISION)
            {
                // convert the float to a string
                dtostrf(avg, RESULT_WIDTH, RESOLUTION, result);

                // publish string
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
