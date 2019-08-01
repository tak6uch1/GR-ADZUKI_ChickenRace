void setup()
{
  pinMode(2, INPUT_PULLUP);
}


void loop()
{
  while (digitalRead(2)) {
  }
  delay(3000);
  analogWrite(9, 255);
  while (true) {
    if (analogRead(A0) >= 120) {
      analogWrite(9, 0);
      analogWrite(10, 255);
      delay(500);
      analogWrite(10, 0);
      break;

    }
  }

}