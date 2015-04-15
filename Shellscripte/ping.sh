#!/bin/sh

ID=172.20.10.4

#ping -q -c4 $ID < /dev/null
#if [ $? -eq 0 ]; then
#echo " $ID Pingen zu folgendem Zeitpunkt erfolgreich: " >> /home/pi/Hausautomatisierung/logfile.file
#echo $(date +'%H-%M-%S') >> /home/pi/Hausautomatisierung/logfile.file
#python /home/pi/Hausautomatisierung/Python/led-high.py
#else 
#echo " $ID Pingen zu folgendem Zeitpunkt nicht erfolgreich: " >> /home/pi/Hausautomatisierung/logfile.file
#echo $(date +'%H-%M-%S') >> /home/pi/Hausautomatisierung/logfile.file
#echo " " >> /home/pi/Hausautomatisierung/logfile.file
##python /home/pi/Hausautomatisierung/Python/led-low.py
#fi


ping -q -c4 $ID < /dev/null
if [ $? -eq 0 ]; then
echo " $ID Pingen zu folgendem Zeitpunkt erfolgreich: " >> /Users/philip/Documents/Schule/PPM/PPM-Köllö/Hausautomatisierung/Sonstige Dateien/Logfiles/logfile.file
echo $(date +'%H-%M-%S') >> /Users/philip/Documents/Schule/PPM/PPM-Köllö/Hausautomatisierung/Sonstige Dateien/Logfiles/logfile.file
python /Users/philip/GitHub/Raspberry-PI/Python/led-high.py
echo " " >> /Users/philip/Documents/Schule/PPM/PPM-Köllö/Hausautomatisierung/Sonstige Dateien/Logfiles/logfile.file

else 
echo " $ID Pingen zu folgendem Zeitpunkt nicht erfolgreich: " >> /Users/philip/Documents/Schule/PPM/PPM-Köllö/Hausautomatisierung/Sonstige Dateien/Logfiles/logfile.file
echo $(date +'%H-%M-%S') >> /Users/philip/Documents/Schule/PPM/PPM-Köllö/Hausautomatisierung/Sonstige Dateien/Logfiles/logfile.file
echo " " >> /Users/philip/Documents/Schule/PPM/PPM-Köllö/Hausautomatisierung/Sonstige Dateien/Logfiles/logfile.file
python /Users/philip/GitHub/Raspberry-PI/Python/led-low.py
fi

