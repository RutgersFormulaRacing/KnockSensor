#define DELAY 10

void setup() {
  pinMode(7, OUTPUT);
}

void loop() {
  for(int i = 0;i<11;i++) {
    digitalWrite(7,HIGH);
    delay(DELAY);
    digitalWrite(7,LOW);
    delay(DELAY);
  }
  delay(DELAY*2);
}
