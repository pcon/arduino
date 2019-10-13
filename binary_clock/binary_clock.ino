#include <ESP8266WiFi.h>
#include <FastLED.h>
#include <TimeLib.h>
#include <Timezone.h>
#include <WiFiUdp.h>

#include "credentials.h"
#include "globals.h"

static const char ntpServerName[] = "us.pool.ntp.org";
const char *ssid = WIFI_SSID;
const char *password = WIFI_PASS;

const int timeZone = 0;
unsigned int localPort = 8888;
time_t prevDisplay = 0;

TimeChangeRule *tcr;
TimeChangeRule usEDT = {"EDT", Second, Sun, Mar, 2, -240};  // UTC - 4 hours
TimeChangeRule usEST = {"EST", First, Sun, Nov, 2, -300};   // UTC - 5 hours
Timezone usEastern(usEDT, usEST);

CRGB leds[NUM_LEDS];
int timeval[NUM_LEDS];

WiFiUDP WiFiUDP;
const int NTP_PACKET_SIZE = 48;
byte packetBuffer[NTP_PACKET_SIZE];

time_t getNtpTime();
void sendNTPpacket(IPAddress &address);
void updateDisplay(time_t t);

void setup() {
  Serial.begin(9600);
  while (!Serial) {
    ;
  }

  FastLED.addLeds<NEOPIXEL, LED_PIN>(leds, NUM_LEDS);
  FastLED.setBrightness(DEFAULT_BRIGHTNESS);

  WiFi.begin(ssid, password);

  int i = 0;
  CRGB::HTMLColorCode color = CRGB::Red;

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);

    leds[i] = color;
    FastLED.show();
    i++;

    if (i > NUM_LEDS) {
      i = 0;
      color = (color == CRGB::Red) ? CRGB::Blue : CRGB::Red;
    }
  }

  WiFiUDP.begin(localPort);
  setSyncProvider(getNtpTime);
  setSyncInterval(300);
}

void loop() {
  if (timeStatus() != timeNotSet) {
    if (now() != prevDisplay) {
      prevDisplay = now();
      updateDisplay(usEastern.toLocal(prevDisplay, &tcr));
    }
  }
}

void updateLEDs(int offset, int number, int bits) {
  for (byte i = 0; i < bits; i++) {
    leds[offset + i] = bitRead(number, i) ? getColor() : NO_COLOR;
  }
}

void updateDisplay(time_t t) {
  updateLEDs(SEC_ONE_OFFSET, (second(t) % 10), 4);
  updateLEDs(SEC_TEN_OFFSET, (second(t) / 10), 3);
  updateLEDs(MIN_ONE_OFFSET, (minute(t) % 10), 4);
  updateLEDs(MIN_TEN_OFFSET, (minute(t) / 10), 3);
  updateLEDs(HOUR_ONE_OFFSET, (hour(t) % 10), 4);
  updateLEDs(HOUR_TEN_OFFSET, (hour(t) / 10), 2);
  FastLED.show();
}

time_t getNtpTime() {
  IPAddress ntpServerIP;

  while (WiFiUDP.parsePacket() > 0)
    ;

  WiFi.hostByName(ntpServerName, ntpServerIP);
  sendNTPpacket(ntpServerIP);
  uint32_t beginWait = millis();

  while (millis() - beginWait < 1500) {
    int size = WiFiUDP.parsePacket();
    if (size >= NTP_PACKET_SIZE) {
      WiFiUDP.read(packetBuffer, NTP_PACKET_SIZE);
      unsigned long secsSince1900;
      secsSince1900 = (unsigned long)packetBuffer[40] << 24;
      secsSince1900 |= (unsigned long)packetBuffer[41] << 16;
      secsSince1900 |= (unsigned long)packetBuffer[42] << 8;
      secsSince1900 |= (unsigned long)packetBuffer[43];
      return secsSince1900 - 2208988800UL + timeZone * SECS_PER_HOUR;
    }
  }

  return 0;
}

void sendNTPpacket(IPAddress &address) {
  memset(packetBuffer, 0, NTP_PACKET_SIZE);
  packetBuffer[0] = 0b11100011;
  packetBuffer[1] = 0;
  packetBuffer[2] = 6;
  packetBuffer[3] = 0xEC;
  packetBuffer[12] = 49;
  packetBuffer[13] = 0x4E;
  packetBuffer[14] = 49;
  packetBuffer[15] = 52;
  WiFiUDP.beginPacket(address, 123);
  WiFiUDP.write(packetBuffer, NTP_PACKET_SIZE);
  WiFiUDP.endPacket();
}