# KnockSensor
Resources for the knock-sensing system to be put on the RFR 16.

A Teensy 3.2 microcontroller recieves an amplified and conditioned signal from a piezoelectric sensor mounted on the car's engine block. Spectral analysis of the signal is performed to find the baseline signal level in the 6 kHz frequency range. The crankshaft angle is tracked by a hall effect sensor connected to an ATtiny microcontroller. When the ATtiny indicates that the crankshaft is in the "knock zone", if a significant deviation from the baseline level is detected, the ECU is signaled to retard ignition timing. 
