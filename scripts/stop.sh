#!/bin/sh
. ./ibeacon.conf
echo "Disabling iBeacon..."
sudo hciconfig $BLUETOOTH_DEVICE noleadv
echo "Stopped."
