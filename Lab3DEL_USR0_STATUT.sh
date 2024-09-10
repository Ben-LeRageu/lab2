#!/bin/bash
#montre le statut du led0 du BBB

# Chemin du fichier trigger
FILE="/sys/class/leds/beaglebone:green:usr0/trigger"

# Verifier si le fichier existe
if [ -f "$FILE" ]; then
    # Afficher le contenu du fichier
    cat "$FILE"
else
    echo "Le fichier $FILE n'existe pas."
fi

