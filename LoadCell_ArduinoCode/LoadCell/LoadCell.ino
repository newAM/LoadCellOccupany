#include <SPI.h>
#include <Ethernet.h>
#include <PubSubClient.h>
#include "HX711.h"

#define DOUT 5 // HX711 DOUT pin
#define CLK  6 // HX711 CLK pin

// LSB to Kg calibration factor
#define CALIBRATION -22990

// HX711 sample settings
#define NUM_SAMPLES   3     // number of sales to take per data point
#define SAMPLE_PERIOD 100   // sample period in ms

// network settings
byte mac[] = {0x00, 0xAA, 0xBB, 0xCC, 0xDE, 0x02};
IPAddress server(10, 0, 0, 4);

// sample timer
unsigned long timer;

// HX711
HX711 scale(DOUT, CLK);

// ethernet client
EthernetClient ethClient;

// mqtt client
PubSubClient client(ethClient);

// 
int samples = 0;
float avg = 0;

void setup()
{
    // connect with dhcp
    while (!Ethernet.begin(mac))
    {
        delay(1000);
    }
    client.setServer(server, 1883);

    scale.set_scale(CALIBRATION);
    scale.tare();

    // allow the hardware to sort itself out
    delay(1500);
}

void loop()
{
    char result[8];

    client.loop();

    // loop until connection established
    while (!client.connected()) 
    {
        // attempt to connect
        if (client.connect("bedLoad")) 
        {
            client.publish("/home/bedroom/bed", "init");
        }
        else
        {
            delay(5000);
        }
    }

    // sample every 100ms
    if (millis() - timer >= SAMPLE_PERIOD)
    {
        avg += scale.get_units();
        samples++;
        if (samples >= NUM_SAMPLES)
        { 
            avg /= samples;
            dtostrf(avg, 4, 1, result);
            client.publish("/home/bedroom/bed/load", result);
            timer = millis();
            avg = 0;
            samples = 0;
        }
    }
}
