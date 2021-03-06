#!/bin/bash
function _restart {
kill `lsof -i -P -n | grep LISTEN | grep $1 | awk '{print $2}'`
supervisorctl start graphjs-website-$1
sleep 10
RES=`tail -n2 /var/log/long.out.log | head -n1`
while [ "$RES" != "Application available at $1" ]; do
	echo "no"
	sleep 5
	RES=`tail -n2 /var/log/long.out.log | head -n1`
done
}
_restart 8080
echo "8080 started"
_restart 8081 
echo "8081 started"
