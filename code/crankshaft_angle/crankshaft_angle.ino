//#define F_CPU 1000000   //CKDIV8 fuse is set

#include <stdlib.h>
#include <avr/interrupt.h>

#define TDC_TOOTH 1

uint8_t tooth = 1;
uint8_t tmrOvf = 0;
uint16_t prevPeriod = 0;

uint16_t m_micros(void) {
    return ((((uint16_t)tmrOvf)<<8) | TCNT0); //bitshift multiplies by 256, with 1MHz counter each tick is one microsecond
}

int main(void) {
    TCCR0B = 0x01; //set counter prescaler to 1
		   //0x01 for prescaler=1, 0x02 for prescaler=8
    TIMSK = 0x02; //enable counter0 overflow interrupts
    DDRB = 0x10; //set PB4 as output
    PCMSK |= 0x08; //enable PCINT3
    GIMSK = 0x20; //enable PCINT interrupts

    sei(); //turn on interrupts globally

    while(1) {
        if(m_micros() > (prevPeriod + (prevPeriod >> 1))) { //if it's been more than 1.5*the previous period, probably missed a tooth, and we're back at the beginning
            PORTB &= 0xEF; //turn off pb4
            tooth = 1; //reset tooth count
        }
        if(tooth - TDC_TOOTH == 4) {	//we've reached the end of the "knock zone"
            PORTB |= 0x10; //turn on pb4
        }
    }
}

ISR(PCINT0_vect) {
    prevPeriod = m_micros();
    TCNT0 = 0;
    tmrOvf = 0;
    tooth++;
}

ISR(TIMER0_OVF_vect) {
    tmrOvf++;
}
