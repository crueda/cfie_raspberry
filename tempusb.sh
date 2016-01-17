#!/bin/bash
FECHA=$(date +\%H:\%M)
COMA=","
TEMP=$(/home/pi/temperv14/temperv14 -c)
echo "$FECHA$COMA$TEMP" >> /var/www/temp/tempusb.log
echo "$TEMP" > /var/www/temp/tempusb_actual.log
