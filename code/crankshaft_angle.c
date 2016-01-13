#define F_CPU 8000000

#include <stdlib.h>
#include <avr/interrupt.h>

uint8_t tooth = 1;
uint8_t tmrOvf = 0;
uint16_t prevPeriod = 0;

uint16_t micros(void) {
    return ((uint16_t)tmrOvf*255+TCNT0); //with prescaler 8, each tick is one microsecond
}

int main(void) {
    TCCR0B = 0x02; //set prescaler to 8
    TIMSK = 0x02; //enable overflow interrupts
    DDRB = 0x10; //set PB4 to output

    while(1) {
        if(micros() > prevPeriod + (prevPeriod >> 1)) {
            PORTB |= 0x10;
            tooth = 1;
        }
        if(tooth == 3) {
            PORTB &= 0xEF;
        }
    }
}

ISR(INT0_vect) {
    TCNT0 = 0;
    tmrOvf = 0;
    tooth++;
}

ISR( TIMER0_OVF_vect) {
    tmrOvf++;
}
