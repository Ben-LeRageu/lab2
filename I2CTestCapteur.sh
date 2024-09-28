#!/bin/bash

# Adresses I2C des capteurs
CAPTEUR1_ADDR=0x68  # capteur MPU-9250
CAPTEUR2_ADDR=0x76  # capteur  BMP280

#Verification de la presence du capteur 1
if i2cdetect -y -r 2 0x68 0x68 | grep -q UU ; then
    echo "Capteur 1 (adresse $CAPTEUR1_ADDR) est present"
else
    echo "Capteur 1 (adresse $CAPTEUR1_ADDR) n'est pas detecte"
fi

#Verification de la presence du capteur 2
#if i2cdetect -y -r 2 0x76 0x76 | grep -q UU > Test.txt; then
if i2cdetect -y -r 2 0x76 0x76 | grep -q UU ; then
    echo "Capteur 2 (adresse $CAPTEUR2_ADDR) est present"
else
    echo "Capteur 2 (adresse $CAPTEUR2_ADDR) n'est pas detecte"
fi
