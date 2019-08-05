# Binary Clock
I decided that I wanted to try my hand at making a binary clock from scratch.  Instead of using an RTC module, I'm using an ESP8266 NodeMCU board that has onboard WiFi to contact an NTP server and keep it up to date.

## Parts

* ESP8266 NodeMCU board - [Amazon](https://www.amazon.com/gp/product/B01IK9GEQG/)
* WS2811 individually addressable RGB LEDs - [Amazon](https://www.amazon.com/gp/product/B01AG923GI/)

If these links do not work, please let me know and I will find the appropriate parts and update this page.

## Libraries

This program uses a couple of external libraries.  These must be installed in your [Arduino library folder](https://www.arduino.cc/en/guide/libraries) either via the Library Manager or by downloading the code from the GitHub links below.

* [FastLED](https://github.com/FastLED/FastLED/) - Addresses LEDs
* [TimeLib](https://github.com/PaulStoffregen/Time) - Used to get information about time
* [Timezone](https://github.com/JChristensen/Timezone) - Used to convert epoch time to Eastern time and handle DST

You will also need to [install the ESP8266 board](https://arduino-esp8266.readthedocs.io/en/latest/installing.html) to get all the needed WiFi and network libraries.

## The Code
Modify the `binary_clock.ino` file in this repo to set your WiFi SSID and password.  Then you will need to modify your timezone information so that the offset is correct.  By default, it will use the Eastern Timezone configured for DST.

## The Hardware
The included wiring diagram makes this seem more complicated than it is and is only there if you want to wire it up yourself using individual LEDs instead of a pre-wired string.  Using a pre-wired string, simply cut off 20 LEDs and put them in the order in the diagram below with the first (LED0) being in the bottom right and stacking from bottom to top, right to left in order.  Then wire the VCC to the 3v3 pin, GND to the GND pin and the DIN to D4 on the ESP8266.

![Diagram](https://github.com/pcon/arduino/raw/master/binary_clock/binary_clock.png)

_NOTE: Because D4 is also the Flash pin, when flashing your board, you will see the LEDs light up in a weird pattern prior to the RST happening_

# TODO
- [ ] Add button to adjust brightness
- [ ] Add button to cycle colors