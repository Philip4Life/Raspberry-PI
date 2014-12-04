#!/bin/sh

ID=172.20.10.6

ping -q -c4 $ID < /dev/null
if [ $? -eq 0 ]; then
echo " $ID Pingen zu folgendem Zeitpunkt erfolgreich: " >> /home/pi/Hausautomatisierung/logfile.file
echo $(date +'%H-%M-%S') >> /home/pi/Hausautomatisierung/logfile.file
echo " " >> /home/pi/Hausautomatisierung/logfile.file
echo "17"  /sys/class/gpio/export
sudo chmod 222 /sys/class/gpio/export /sys/class/gpio/unexport
echo "out" > /sys/class/gpio/gpio17/direction
echo "1" > /sys/class/gpio/gpio17/value
else 
echo " $ID Pingen zu folgendem Zeitpunkt nicht erfolgreich: " >> /home/pi/Hausautomatisierung/logfile.file
echo $(date +'%H-%M-%S') >> /home/pi/Hausautomatisierung/logfile.file
echo " " >> /home/pi/Hausautomatisierung/logfile.file
fi


