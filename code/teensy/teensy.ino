#include <Audio.h>
#include <Wire.h>
#include <SPI.h>
#include <SD.h>
#include <SerialFlash.h>

//define pin constants
const int diagLED_device_on = 13;
const int diagLED_knock_detected = 12;
const int diagLED_in_knock_zone = 11;
const int diagLED_receiving_vibration_signal = 10;
const int vibration_signal_pin = A0;

// GUItool: begin automatically generated code
AudioInputAnalog         adc1;           //xy=137.1999969482422,188.1999969482422
AudioAnalyzeToneDetect   tone1;          //xy=336.20001220703125,162.1999969482422
AudioAnalyzePeak         peak1;          //xy=336.2000274658203,271.2000274658203
AudioAnalyzeRMS          rms1;           //xy=337.2000274658203,322.2000274658203
AudioAnalyzeFFT256       fft256_1;       //xy=338.1999969482422,109.19999694824219
AudioAnalyzeNoteFrequency notefreq1;      //xy=342.2000274658203,218.20001220703125
AudioAnalyzeFFT1024      fft1024_1;      //xy=345.2000274658203,50.19999694824219
AudioConnection          patchCord1(adc1, fft256_1);
AudioConnection          patchCord2(adc1, tone1);
AudioConnection          patchCord3(adc1, notefreq1);
AudioConnection          patchCord4(adc1, fft1024_1);
AudioConnection          patchCord5(adc1, peak1);
AudioConnection          patchCord6(adc1, rms1);
// GUItool: end automatically generated code


void setup() {
  pinMode(diagLED_device_on, OUTPUT);
  pinMode(diagLED_knock_detected, OUTPUT);
  pinMode(diagLED_in_knock_zone, OUTPUT);
  pinMode(diagLED_receiving_vibration_signal, OUTPUT);
  pinMode(vibration_signal_pin, INPUT);

  digitalWrite(diagLED_device_on, HIGH);
}

void loop() {
  digitalWrite(diagLED_device_on, HIGH);   // set the LED on
  delay(1000);                  // wait for a second
  digitalWrite(diagLED_device_on, LOW);    // set the LED off
  delay(1000);                  // wait for a second
}

