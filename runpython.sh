#!/bin/sh
LOGFILE=/tmp/mylog$RANDOM.txt

echo starting execution  $(date) > $LOGFILE
echo machine id $1 total machines $2  $(date) >> $LOGFILE
sudo apt-get update
sudo apt-get upgrade --yes
sudo apt-get install python3-pip --yes
echo working directory $(pwd) >> $LOGFILE
pip3 install -r requirement.txt 
tar -xzf inputfiles.tar.gz
python3 filetorun.py  $1 $2 > /tmp/output$1-$2.txt
echo finished execution $(date) >> $LOGFILE
