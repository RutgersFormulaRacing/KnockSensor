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
const int not_knock_zone_pin = 15;

// GUItool: begin automatically generated code
AudioInputAnalog         adc1;           //xy=137.1999969482422,188.1999969482422
AudioAnalyzeToneDetect   tone1;          //xy=336.20001220703125,162.1999969482422
AudioAnalyzeRMS          rms1;           //xy=337.2000274658203,322.2000274658203
AudioAnalyzeFFT256       fft256_1;       //xy=338.1999969482422,109.19999694824219
AudioAnalyzeNoteFrequency notefreq1;      //xy=342.2000274658203,218.20001220703125
AudioAnalyzeFFT1024      fft1024_1;      //xy=345.2000274658203,50.19999694824219
AudioConnection          patchCord1(adc1, fft256_1);
AudioConnection          patchCord2(adc1, tone1);
AudioConnection          patchCord3(adc1, notefreq1);
AudioConnection          patchCord4(adc1, fft1024_1);
AudioConnection          patchCord6(adc1, rms1);
// GUItool: end automatically generated code

//elapsedMillis emillis;
//elapsedMicros emicros;

void setup() {
  AudioMemory(10);
  
  pinMode(diagLED_device_on, OUTPUT);
  pinMode(diagLED_knock_detected, OUTPUT);
  pinMode(diagLED_in_knock_zone, OUTPUT);
  pinMode(diagLED_receiving_vibration_signal, OUTPUT);
  pinMode(not_knock_zone_pin, INPUT_PULLUP);
}

void loop() {
  //blink the diagnostic LED at 1 hz to show that our code is running on the device
  if(millis() / 500 % 2 == 0) {
    digitalWrite(diagLED_device_on, HIGH);
  } else {
    digitalWrite(diagLED_device_on, LOW);
  }

  //turn on diagnostic LED to show that we are recieving a knock signal
  if(analogRead(vibration_signal_pin) > 5) {
    digitalWrite(diagLED_receiving_vibration_signal, HIGH);
  } else {
    digitalWrite(diagLED_receiving_vibration_signal, LOW);
  }

  //turn on diagnostic LED if we are in the knock zone
  digitalWrite(diagLED_in_knock_zone, !digitalRead(not_knock_zone_pin));

  /*
   * if not in knock zone
   *  detect and save baseline signal (rms? mean? how many bins? digital filter or analog?)
   * else
   *  if signal - baseline > threshold (how high is threshold?)
   *    knock is detected
   */
   //not in knock zone
  if(digitalRead(not_knock_zone_pin)) {
    
  } 
  //in the knock zone
  else {
    
  }
}

