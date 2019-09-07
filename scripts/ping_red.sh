#!/bin/bash

#buscar en una red cual ips estan activas
#ip con la que comienza la busqueda ej: 198.162.1.1
ip=$1

#rango de ips a verificar Ej: 100
rango=$2

ips1=`echo "$ip" | awk -F '.' '{print $1}'`
ips2=`echo "$ip" | awk -F '.' '{print $2}'`
ips3=`echo "$ip" | awk -F '.' '{print $3}'`
ips4=`echo "$ip" | awk -F '.' '{print $4}'`

rangoM=$ips4
let rangoM=$ips4+$rango

while [  $ips4 -lt $rangoM ]; do

if ping -c 2 "$ips1"."$ips2"."$ips3"."$ips4" > /dev/null ;then

echo "$ips1"."$ips2"."$ips3"."$ips4" >> servers.txt
echo "$ips1"."$ips2"."$ips3"."$ips4"

fi

let ips4=ips4+1 

done
