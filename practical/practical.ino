#include<avr/io.h>
#include<util/delay.h>
#define F_CPU 16000000
int main(void){
  DDRB = 0xff;
  int count = 3;
  while(count>0){
    PORTB = 0xff;
    _delay_ms(1000);
    PORTB = 0x00;
    _delay_ms(1000);
    count--;
  }
}
void setup() {
  // put your setup code here, to run once:

}

// void loop() {
//   // put your main code here, to run repeatedly:

// }
