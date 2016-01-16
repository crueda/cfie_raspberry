#!/bin/bash
FECHA=$(date +\%H\%M)
COMA=","
TEMP=$(python /home/pi/temp/tempDHT.py 11 5)
echo "$FECHA$COMA$TEMP" >> /var/www/temp/tempdht11.log
echo "$TEMP" > /var/www/temp/tempdht11_actual.log
