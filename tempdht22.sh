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
TEMP=$(python /home/pi/temp/tempDHT.py 22 4)
echo "$ANYO$BARRA$MES$BARRA$DIA$ESPACIO$HORA$PUNTOS$MINUTOS$PUNTOS$SEGUNDOS$COMA$TEMP" >> /var/www/temp/tempdht22.log
echo "$TEMP" > /var/www/temp/tempdht22_actual.log
