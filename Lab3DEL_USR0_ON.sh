#!/bin/bash
#fais allumer la led0 du BBB
echo "1" > /sys/class/leds/beaglebone:green:urs0/trigger
