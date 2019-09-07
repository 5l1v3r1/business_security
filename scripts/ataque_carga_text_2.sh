#!/bin/bash
if [ $# -eq 4 ]; then
 DIRECCION="$1"
 TEXT=`cat $2`
 CANT_A="$3"
 CADENA_N="$4"
 let CONTF+="$CADENA_N"
 CONTI="0"
 while [ $CONTI -lt $CONTF ]; do
	CADENA=$CADENA+$TEXT
	let CONTI+=1
 done 
 let CONTFF+="$CANT_A"
 CONTII="0"
 while [ $CONTII -lt $CONTFF ]; do
	ab -n 1000 -c 1000 http://$DIRECCION/p$CADENA.html
 let CONTII+=1
 done 
else
 echo "./<script>.sh <url> <archivo> <cantidad> <cadena>"
fi
