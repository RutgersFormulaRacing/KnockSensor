#define F_CPU 8000000

#include <stdlib.h>
#include <avr/interrupt.h>

uint8_t ticks = 0;
uint8_t tmrOvf = 0;

int main(void) {
    TCCR0B = 0x02; //enable prescaler
    TIMSK = 0x02; //enable overflow interrupts
    DDRB = 0x10; //PB4 is an output

    while(1){}
}

ISR(INT0_vect) {

}
