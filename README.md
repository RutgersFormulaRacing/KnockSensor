# KnockSensor
Code and schematics for the knock sensor and accompanying electronics to be put on the RFR 16.

an atmega328p microcontroller is used to recieve a signal from a piezoelectric sensor mounted on the car's engine block which has been amplified by a TLC2262 op amp. The signal is interpreted and if engine knock is detected, the ECU is signaled to retard ignition timing.
