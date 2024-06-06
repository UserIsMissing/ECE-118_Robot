#include <FastLED.h>

#define NUM_LEDS 144
#define LED_PIN 3

#define STATE1 2

void setup()
{
    FastLED.addLeds<NEOPIXEL, LED_PIN>(leds, NUM_LEDS);
    CRGB leds[NUM_LEDS];

    pinMode(STATE1, input);
}

void loop()
{
    for (int i = 0; i < 144; i++)
    {
    }
}