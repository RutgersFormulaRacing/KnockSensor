#include <Audio.h>
#include <Wire.h>
#include <SPI.h>
#include <SD.h>
#include <SerialFlash.h>

#define ADC_EPS 50
#define PULSE_LENGTH 50
#define RMS_FACTOR 1.5
#define PEAK_FACTOR 3
#define TONE_FACTOR 4


//define pin constants
const int diagLED_device_on = 13;
const int diagLED_knock_detected = 12;
const int diagLED_in_knock_zone = 11;
const int diagLED_receiving_vibration_signal = 10;
const int vibration_signal_pin = A0;
const int not_knock_zone_pin = 15;
const int ecu_output_pin = A14;

// GUItool: begin automatically generated code
AudioInputAnalog         adc;           //xy=137.1999969482422,188.1999969482422
AudioAnalyzeToneDetect   tonedetect;          //xy=336.20001220703125,162.1999969482422
AudioAnalyzeRMS          rms;           //xy=337.2000274658203,322.2000274658203
AudioAnalyzePeak          peak;           //xy=337.2000274658203,322.2000274658203
AudioAnalyzeFFT256       fft256;       //xy=338.1999969482422,109.19999694824219
AudioConnection          patchCord1(adc, fft256);
AudioConnection          patchCord2(adc, tonedetect);
AudioConnection          patchCord6(adc, rms);
AudioConnection          patchCord7(adc, peak);
// GUItool: end automatically generated code

//elapsedMillis emillis;
//elapsedMicros emicros;

void setup() {
  AudioMemory(10);
  
  pinMode(diagLED_device_on, OUTPUT);
  pinMode(diagLED_knock_detected, OUTPUT);
  pinMode(diagLED_in_knock_zone, OUTPUT);
  pinMode(diagLED_receiving_vibration_signal, OUTPUT);
  pinMode(ecu_output_pin, OUTPUT);
  pinMode(not_knock_zone_pin, INPUT_PULLUP);
}

unsigned long pulseStart = 0;
int samples = 0;
double level = 0;
double mean = 0;

void loop() {
  //blink the diagnostic LED at 1 hz to show that our code is running on the device
  if(millis() / 500 % 2 == 0) {
    digitalWrite(diagLED_device_on, HIGH);
  } else {
    digitalWrite(diagLED_device_on, LOW);
  }

  //turn on diagnostic LED if we are recieving a vibration signal
  if(abs(analogRead(vibration_signal_pin) - 512) > ADC_EPS) {
    digitalWrite(diagLED_receiving_vibration_signal, HIGH);
  } else {
    digitalWrite(diagLED_receiving_vibration_signal, LOW);
  }

  //turn on diagnostic LED if we are in the knock zone
  digitalWrite(diagLED_in_knock_zone, !digitalRead(not_knock_zone_pin));

  //turn on knock detected pins
  if(millis() - pulseStart < PULSE_LENGTH) {
    digitalWrite(diagLED_knock_detected, HIGH);
    digitalWrite(ecu_output_pin, HIGH);
  } else {
    digitalWrite(diagLED_knock_detected, LOW);
    digitalWrite(ecu_output_pin, LOW);
  }

  //choose one
  detect_rms();
  //detect_peak();
  //detect_tone();
  //TODO fft versions
}

void detect_rms() {
  //not in knock zone
  if(digitalRead(not_knock_zone_pin)) {
    if(rms.available()) {
      level+=rms.read();
      mean = level/++samples;
    }
  } 
  //in the knock zone
  else {
    level = 0;
    samples = 0;
    if(rms.available()) {
      if(rms.read() / mean > RMS_FACTOR) {
        pulseStart = millis();
      }
    }
  }
}

void detect_peak() {
  //not in knock zone
  if(digitalRead(not_knock_zone_pin)) {
    if(peak.available()) {
      level+=peak.read();
      mean = level/++samples;
    }
  } 
  //in the knock zone
  else {
    level = 0;
    samples = 0;
    if(peak.available()) {
      if(peak.read() / mean > PEAK_FACTOR) {
        pulseStart = millis();
      }
    }
  }
}

void detect_tone() {
  //not in knock zone
  if(digitalRead(not_knock_zone_pin)) {
    if(tonedetect.available()) {
      level+=tonedetect.read();
      mean = level/++samples;
    }
  } 
  //in the knock zone
  else {
    level = 0;
    samples = 0;
    if(tonedetect.available()) {
      if(tonedetect.read() / mean > TONE_FACTOR) {
        pulseStart = millis();
      }
    }
  }
}
