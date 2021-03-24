#!/bin/sh
LOGFILE=/tmp/mylog$RANDOM.txt
echo starting execution  $(date) > $LOGFILE
echo machine id $1 total machines $2  $(date) > $LOGFILE
curl $REQUIREMENT_URL -o requirement.txt
pip3 install -r requirement.txt 
curl $CODE_URL -o filetorun.py
python3 filetorun.py  $1 $2
echo finished execution $(date) >> $LOGFILE