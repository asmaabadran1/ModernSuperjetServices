#include <LiquidCrystal.h>
#include <Servo.h>
const int buzzer = 13; 
int incomingByte;      
int greenled = 8;
int redled = 9;
int yellowled = 7;////////////////
const int rs = 12, en = 11, d4 = 5, d5 = 4, d6 = 3, d7 = 2;
 LiquidCrystal lcd(rs, en, d4, d5, d6, d7);
int pos = 0;   
int val;
Servo myservo;
int countH=0;
int countL=0;

  
void setup() {
  Serial.begin(9600);
  myservo.attach(6); 
  pinMode(buzzer, OUTPUT);
  lcd.begin(16, 2);  
  pinMode(greenled, OUTPUT); 
  pinMode(redled, OUTPUT);   
  pinMode (yellowled, OUTPUT);                 
}

void loop() {
  
  if (Serial.available() > 0) {   
    incomingByte = Serial.read();
    if (incomingByte == 'R') {
      digitalWrite(yellowled, HIGH);
    }
    if (incomingByte == 'T'){
      digitalWrite(yellowled, LOW);
    }
    if (incomingByte == 'H') { 
     noTone(buzzer);
     digitalWrite(greenled, HIGH);
     digitalWrite(redled, LOW);
     lcd.clear();
     lcd.setCursor(0, 0);    
     lcd.print("Mask Detected");      
    }
    if (incomingByte == 'L') {
      tone(buzzer,523, 300);
      delay(500);
      digitalWrite(redled, HIGH);
      digitalWrite(greenled, LOW);
      lcd.clear();
      lcd.setCursor(0, 0);    
     lcd.print("Please Wear Mask!");
    }
    
    if (incomingByte == 'H') { 
         if(pos!=0 && countH==0){
           myservo.write(0);
           //delay(15);
           countH=1;
         } 
                          //180
      for (pos = 0; pos <= 180; pos += 10) { 
          myservo.write(pos);              
          //delay(2);  
          //currentPos=pos;          
      }
       
    }
    else if (incomingByte == 'L') {
       if(pos!=180 && countL==0){
           myservo.write(90); //180
           //delay(15);
           countL=1;
         } 
                    //180
          for (pos = 180; pos >= 0; pos -= 10) { 
           myservo.write(pos);             
           //delay(2);                      
        }

    }
  }
  
}

  
