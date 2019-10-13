#include <EEPROM.h>
#include <FastLED.h>

#define NUM_LEDS 20
#define LED_PIN 2

#define SEC_ONE_OFFSET 0
#define SEC_TEN_OFFSET 4
#define MIN_ONE_OFFSET 7
#define MIN_TEN_OFFSET 11
#define HOUR_ONE_OFFSET 14
#define HOUR_TEN_OFFSET 18

#define DEFAULT_COLOR CRGB::Blue
#define NO_COLOR CRGB::Black
#define DEFAULT_BRIGHTNESS 50

CRGB::HTMLColorCode getColor() { return DEFAULT_COLOR; }