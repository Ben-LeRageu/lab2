#!/bin/bash
#fais flasher le plus rapidemment possible la led0 du BBB

# Chemin de la LED usr0
LED_PATH="/sys/class/leds/beaglebone:green:usr0"

# Verifier si le chemin de la LED existe
if [ ! -d "$LED_PATH" ]; then
    echo "Le chemin de la LED $LED_PATH n'existe pas."
    exit 1
fi

# Boucle infinie pour faire clignoter la LED
while true; do
    echo "1" > "$LED_PATH/brightness"  # Allume la LED
    usleep 10000                       # Attend 10 ms
    echo "0" > "$LED_PATH/brightness"  # Eteint la LED
    usleep 10000                       # Attend 10 ms
done
