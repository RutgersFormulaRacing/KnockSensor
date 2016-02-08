FILE       = crankshaft_angle

DEVICE     = attiny25           # See avr-help for all possible devices
CLOCK      = 1000000
BAUD       = 115200
PORT       = /dev/ttyACM0
PROGRAMMER = arduino
FUSES      = -U lfuse:w:0x62:m -U hfuse:w:0xdf:m -U efuse:w:0xff:m  # settings as taken from http://www.engbedded.com/fusecalc/
		#lfuse = 0x62 for 1MHz base clock, 0xe2 for 8MHz base clock

AVRDUDE    = avrdude -c $(PROGRAMMER) -p $(DEVICE) -b $(BAUD) -P $(PORT)
COMPILE    = avr-gcc -mmcu=$(DEVICE)

hex:
	$(COMPILE) -Wall -O3 -DF_CPU=$(CLOCK) -c $(FILE).c -std=c99
	$(COMPILE) -o $(FILE).elf $(FILE).o
	avr-objcopy -O ihex -R .eeprom $(FILE).elf $(FILE).hex
	rm $(FILE).o
	rm $(FILE).elf

flash:
	$(AVRDUDE) -U $(FILE).hex

fuses:
	$(AVRDUDE) -u $(FUSES)
