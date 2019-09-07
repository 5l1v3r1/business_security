#!/bin/bash

#ip del equipo a buscar
IP=$1
#puerto de inicio
PUERTOI=$2
#puerto de finalizacion
PUERTOF=$3
if [ $# -eq 3 ]; then 
let CONTF+="$PUERTOF"
CONTI="$PUERTOI"
#bucle buscar puerto por puerto
while [ $CONTI -lt $CONTF ]; do

if nc -z -w2 $IP $CONTI  2>/dev/null; then

echo "Puerto Abierto $CONTI"

else
  
echo "Puerto Cerrado $CONTI"
fi
#echo $CONTI
let CONTI+=1
done #fin bucle while
else
echo "<IP>" "<PUERTO INICIAL>" "<PUERTO FINAL>"
fi
