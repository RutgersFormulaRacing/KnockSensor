DEVICE     = attiny25           # See avr-help for all possible devices
CLOCK      = 8000000
BAUD       = 115200
PORT       = /dev/ttyACM0
PROGRAMMER = arduino
FUSES      = -U lfuse:w:0xe2:m -U hfuse:w:0xdf:m -U efuse:w:0xff:m  # settings as taken from http://www.engbedded.com/fusecalc/

AVRDUDE    = avrdude -c $(PROGRAMMER) -p $(DEVICE) -b $(BAUD) -P $(PORT)
COMPILE    = avr-gcc -mmcu=$(DEVICE)

hex:
	$(COMPILE) -Wall -O3 -DF_CPU=$(CLOCK) -c $(prog).c -std=c99
	$(COMPILE) -o $(prog).elf $(prog).o
	avr-objcopy -O ihex -R .eeprom $(prog).elf $(prog).hex
	rm $(prog).o
	rm $(prog).elf

flash:
	$(AVRDUDE) -U $(prog).hex

fuses:
	$(AVRDUDE) -u $(FUSES)
