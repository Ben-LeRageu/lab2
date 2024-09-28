#!/bin/bash

# Adresses I2C des capteurs
CAPTEUR1_ADDR=0x68  # MPU-9250
CAPTEUR2_ADDR=0x76  # BMP280

# Registres des ID 
REG_ID_CAPTEUR1=0x75  # MPU-9250
REG_ID_CAPTEUR2=0xD0  # BMP280

# Lire et verifier le registre d'ID du capteur 1(MPU9250)
ID_CAPTEUR1=$(i2cget -f -y 2 $CAPTEUR1_ADDR $REG_ID_CAPTEUR1)
if [ "$ID_CAPTEUR1" == "0x71" ]; then
    echo "Capteur 1 correctement identifie (ID : $ID_CAPTEUR1)."
else
    echo "Capteur 1 non identifie ou erreur (ID: $ID_CAPTEUR1)."
fi

# Lire et verifier le registre d'ID du capteur 2(BMP280)
ID_CAPTEUR2=$(i2cget -f -y 2 $CAPTEUR2_ADDR $REG_ID_CAPTEUR2)
if [ "$ID_CAPTEUR2" == "0x58" ]; then
    echo "Capteur 2 correctement identifie (ID : $ID_CAPTEUR2)."
else
    echo "Capteur 2 non identifie ou erreur (ID: $ID_CAPTEUR2)."
fi
