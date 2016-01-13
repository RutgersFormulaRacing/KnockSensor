#define F_CPU 8000000

#include <stdlib.h>
#include <avr/interrupt.h>

uint8_t tooth = 0;
uint8_t tmrOvf = 0;

int main(void) {
    TCCR0B = 0x02; //set prescaler to 8
    TIMSK = 0x02; //enable overflow interrupts
    DDRB = 0x10; //set PB4 to output

    while(1) {

    }
}

uint16_t micros(void) {
    return ((uint16_t)tmrOvf*255+TCNT0); //with prescaler 8, each tick is one microsecond
}

ISR(INT0_vect) {
    TCNT0 = 0;
    tmrOvf = 0;
    tooth++;
}

ISR( TIMER0_OVF_vect) {
    tmrOvf++;
}
