#!/bin/bash
#fais passer la del urs0 de none a timer avec un delai allumer de 300ms et un delai eteint de 700ms
echo "none" > /sys/class/leds/beaglebone:green:urs0/trigger
echo "timer" > /sys/class/leds/beaglebone:green:urs0/trigger
echo "300" > /sys/class/leds/beaglebone:green:urs0/delay_on
echo "700" > /sys/class/leds/beaglebone:green:urs0/delay_off

