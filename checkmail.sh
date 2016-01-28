#!/usr/bin/env python
#-*- coding: UTF-8 -*-

# autor: Carlos Rueda
# fecha: 2015-01-22
# mail: crueda@gmail.com

import poplib
from email.Parser import Parser

# Se establece conexion con el servidor pop de gmail
m = poplib.POP3_SSL('pop.gmail.com',995)
m.user('cursocfie.raspberry1@gmail.com')
m.pass_('cursocfie1')

# Se obtiene el numero de mensajes pendientes y se hace un
# bucle para cada mensaje
numero = len(m.list()[1])
for i in range (numero):
  # Se lee el mensaje
  response, headerLines, bytes = m.retr(i+1)
  # Se mete todo el mensaje en un unico string
  mensaje='\n'.join(headerLines)
  # Se parsea el mensaje
  p = Parser()
  email = p.parsestr(mensaje)
  # Se sacan por pantalla los campos from, to y subject
  email_from = email["From"]
  email_to = email["To"]
  email_subject = email["Subject"]
  email_body = email.get_payload(decode=True)

  #if (email_from.index("crueda@gmail.com")>-1):
  if (1 == 1):
  # Acciones para mensaje de configuracion
    if (email_subject == "CONF"):
      try:
        print "MENSAJE DE CONFIGURACION RECIBIDO: " + email_body      
      except:
        print "Excepcion leyendo el mail"

# Cierre de la conexion
m.quit()