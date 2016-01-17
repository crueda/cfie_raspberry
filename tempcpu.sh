#!/bin/bash
FECHA=$(/bin/date +\%H:\%M)
COMA=","
TEMP=$(/opt/vc/bin/vcgencmd measure_temp | /usr/bin/cut -c 6-9)
/bin/echo "$FECHA$COMA$TEMP" >> /var/www/temp/tempcpu.log
/bin/echo "$TEMP" > /var/www/temp/tempcpu_actual.log
