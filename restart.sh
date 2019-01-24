#/bin/bash

FAILS=0
SERVER="8.8.8.8"
DATE=$(date)

while true; do
    ping -c 3 $SERVER >/dev/null 2>&1
    if [ $? -ne 0 ] ; then #if ping exits nonzero...
        FAILS=$[FAILS + 1]
        sleep 10m
    else
        FAILS=0
        echo "Connection up: ${DATE}" >> /home/admin/logfiles/urlcheck.log
        break
    fi
    if [ $FAILS -gt 4 ]; then
        FAILS=0

        /usr/local/bin/egctl powerbolt off left left left > /dev/null 2>&1
        sleep 20s
        /usr/local/bin/egctl powerbolt on left left left > /dev/null 2>&1
        echo "Connection down: ${DATE} > Router restart" >> /home/admin/logfiles/urlcheck.log
        break
    fi
done
