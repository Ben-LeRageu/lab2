#!/bin/bash
#retourne dans le mode par defaut de led0 (heartbeat)
echo "heartbeat" > /sys/class/leds/beaglebone:green:usr0/trigger

