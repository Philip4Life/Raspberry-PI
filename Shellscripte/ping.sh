#!/bin/sh

ID=172.20.10.6

ping -q -c4 $ID < /dev/null
if [ $? -eq 0 ]; then
echo " $ID Pingen zu folgendem Zeitpunkt erfolgreich: " >> /home/pi/Hausautomatisierung/logfile.file
echo $(date +'%H-%M-%S') >> /home/pi/Hausautomatisierung/logfile.file
python /home/pi/Hausautomatisierung/Python/led-high.py
else 
echo " $ID Pingen zu folgendem Zeitpunkt nicht erfolgreich: " >> /home/pi/Hausautomatisierung/logfile.file
echo $(date +'%H-%M-%S') >> /home/pi/Hausautomatisierung/logfile.file
echo " " >> /home/pi/Hausautomatisierung/logfile.file
python /home/pi/Hausautomatisierung/Python/led-low.py
fi


