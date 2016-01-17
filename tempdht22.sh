#!/bin/bash
FECHA=$(date +\%H:\%M)
COMA=","
TEMP=$(python /home/pi/temp/tempDHT.py 22 4)
echo "$FECHA$COMA$TEMP" >> /var/www/temp/tempdht22.log
echo "$TEMP" > /var/www/temp/tempdht22_actual.log
