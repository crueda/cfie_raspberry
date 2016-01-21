#!/usr/bin/env python
#-*- coding: UTF-8 -*-

# autor: Carlos Rueda
# fecha: 2015-01-14
# mail: carlos.rueda@deimos-space.com

import tweetpony
import time
import datetime

hora_actual = time.strftime("20%y/%m/%d - %H:%M:%S", time.localtime())

fichero_temp = open('/var/www/sensores/temperatura_actual.log', 'rb')
for line in fichero_temp:
	temp_actual = line

fichero_hum = open('/var/www/sensores/humedad_actual.log', 'rb')
for line in fichero_hum:
	hum_actual = line

api = tweetpony.API(consumer_key = "iS3hZG8TZwXNb0UudO6LYFcpe", consumer_secret = "EBxLejj25otxHGwwFujG5IK7gZWBT7TXGJK4uBBwyY2bpVDa8l", access_token = "4830621454-R8T9WjRNzT6paY6tc63OBdq718xAvwutuiHm7eL", access_token_secret = "rkTvRojtenCPJbMN5g9htdGyqMU9G7h8nqhR3V2uiWxLn")
user = api.user

tuit = hora_actual + " Raspberry1 \nTemperatura: " + temp_actual + "\n" + "Humedad: " + hum_actual  

fichero_temp.close
fichero_hum.close

try:
    api.update_status(status = tuit)
except tweetpony.APIError as err:
    print "Oops, something went wrong! Twitter returned error #%i and said: %s" % (err.code, err.description)
else:
    print "Yay! Your tweet has been sent!"
