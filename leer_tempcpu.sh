#!/bin/bash
FECHA=$(date +\%Y\%m\%d\%H\%M\%S)
ANYO=$(date +\%Y)
MES=$(date +\%m)
DIA=$(date +\%d)
HORA=$(date +\%H)
MINUTOS=$(date +\%M)
SEGUNDOS=$(date +\%S)
BARRA="/"
ESPACIO=" "
PUNTOS=":"
COMA=","
TEMP=$(/opt/vc/bin/vcgencmd measure_temp | /usr/bin/cut -c 6-9)
echo "$ANYO$BARRA$MES$BARRA$DIA$ESPACIO$HORA$PUNTOS$MINUTOS$PUNTOS$SEGUNDOS$COMA$TEMP" >> /var/www/sensores/tempcpu.log
echo "$TEMP" > /var/www/sensores/tempcpu_actual.log