#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:$PATH

DESC="iBeacon Application Software"
PIDFILE=/var/run/ibeacon.pid
SCRIPTNAME=/etc/init.d/ibeacon

case "$1" in
start)
        printf "%-50s" "Starting ibeacon..."
        cd /ibeacon
        ./start
;;
stop)
        printf "%-50s" "Stopping ibeacon..."
        cd /ibeacon
        ./stop
;;
restart)
        $0 stop
        $0 start
;;
*)
        echo "Usage: $0 {start|stop|restart}"
        exit 1
esac
