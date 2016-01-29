#define F_CPU 1000000

#include <stdlib.h>
#include <avr/interrupt.h>

uint8_t tooth = 1;
uint8_t tmrOvf = 0;
uint16_t prevPeriod = 0;

uint16_t micros(void) {
    return ((((uint16_t)tmrOvf)<<8) | TCNT0); //bitshift multiplies by 256, with 1MHz counter each tick is one microsecond
}

int main(void) {
    TCCR0B = 0x01; //set counter prescaler to 1
		   //0x01 for prescaler=1, 0x02 for prescaler=8
    TIMSK = 0x02; //enable counter0 overflow interrupts
    DDRB = 0x10; //set PB4 to output
    MCUCR |= 0x03; //set INT0/PB2 to trigger an interrupt on every rising edge
    GIMSK = 0x40; //enable INT0 interrupts
    
    sei(); //turn on interrupts globally

    while(1) {
        if(micros() > prevPeriod + (prevPeriod >> 1)) { //if it's been more than 1.5*the previous period, probably missed a tooth
            PORTB |= 0x10; //turn on pb4
            tooth = 1; //reset tooth count
        }
        if(tooth == 3) {
            PORTB &= 0xEF; //turn off pb4
        }
    }
}

ISR(INT0_vect) {
    TCNT0 = 0;
    tooth++;
    tmrOvf = 0;
}

ISR(TIMER0_OVF_vect) {
    tmrOvf++;
}
