#!/bin/bash
FECHA=$(date +\%Y/\%m/\%d/ \%H\%M:\%S)
COMA=","
TEMP=$(python /home/pi/temp/tempDHT.py 22 4)
echo "$FECHA$COMA$TEMP" >> /var/www/temp/tempdht22.log
echo "$TEMP" > /var/www/temp/tempdht22_actual.log
