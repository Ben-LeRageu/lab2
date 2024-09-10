#!/bin/bash
#eteint la led0 du BBB
echo "0" > /sys/class/leds/beaglebone:green:urs0/brightness
