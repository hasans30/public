#!/bin/sh
LOGFILE=/tmp/mylog$RANDOM.txt
echo starting execution  $(date) > $LOGFILE
echo machine id $1 total machines $2  $(date) > $LOGFILE
pip3 install -r requirement.txt 
python3 filetorun.py  $1 $2 > /tmp/output$1-$2.txt
echo finished execution $(date) >> $LOGFILE
