#!/bin/bash
IP=$1
SERVIDOR=$2
#se verifica si el puerto 80 responde
if  nc -z -w2 $IP 80 > /dev/null ;then
echo "Responde el puerto 80  del equipo $IP"
#echo " " >> /home/monitor/LOGS/verificacion.txt
echo "Responde el puerto 80  del equipo $IP $(date)" >> /home/monitor/LOGS/verificacion_apache.txt
        #se verifica si el apache esta respondiendo
        if curl -I $IP > /dev/null ;then
                echo "El apache responde"
                echo "El apache responde $(date)" >> /home/monitor/LOGS/verificacion_apache.txt
        else
                echo "El apache no responde"
       
                #echo " " >> /home/monitor/LOGS/verificacion.txt
                echo "El apache no responde $(date)" >> /home/monitor/LOGS/verificacion_apache.txt
                # <destinatario> <servidor> <servicio> <IP>
                /home/monitor/SCRIPTS/mail.sh gcetraro@aysa.com.ar $SERVIDOR apache $IP
                /home/monitor/SCRIPTS/mail.sh dnarvaez@aysa.com.ar $SERVIDOR apache $IP
                /home/monitor/SCRIPTS/mail.sh Leandro_LORENZO_Y_LOSADA@aysa.com.ar $SERVIDOR apache $IP
                /home/monitor/SCRIPTS/mail.sh Edgar_E_GONZALEZ_RODRIGUEZ@aysa.com.ar $SERVIDOR apache $IP
        
        fi
else
        echo "No responde el puerto 80 del equipo $IP"
        #echo " " >> /home/monitor/LOGS/verificacion.txt
        echo "No Responde el puerto 80 del equipo $IP $(date)" >> /home/monitor/LOGS/verificacion_apache.txt
        # <destinatario> <servidor> <servicio> <IP>
        /home/monitor/SCRIPTS/mail.sh gcetraro@aysa.com.ar $SERVIDOR WEB $IP
        /home/monitor/SCRIPTS/mail.sh dnarvaez@aysa.com.ar $SERVIDOR WEB $IP
        /home/monitor/SCRIPTS/mail.sh Leandro_LORENZO_Y_LOSADA@aysa.com.ar $SERVIDOR WEB $IP
        /home/monitor/SCRIPTS/mail.sh Edgar_E_GONZALEZ_RODRIGUEZ@aysa.com.ar $SERVIDOR WEB $IP
fi
