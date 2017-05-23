#!/bin/sh
# /etc/hotplug.d/iface/99-drcom

if [ "$ACTION" = ifup ]; then 
    if [ "${INTERFACE}" = "wan" ]; then
        sleep 3 && date -u "`curl -sI 117.37.36.169:10000 | awk '/Date:/{gsub(/Jan/,"01",$4);gsub(/Feb/,"02",$4);gsub(/Mar/,"03",$4);gsub(/Apr/,"04",$4);gsub(/May/,"05",$4);gsub(/Jun/,"06",$4);gsub(/Jul/,"07",$4);gsub(/Aug/,"08",$4);gsub(/Sep/,"09",$4);gsub(/Oct/,"10",$4);gsub(/Nov/,"11",$4);gsub(/Dec/,"11",$4);print $5"-"$4"-"$3" "$6;}'`"
    fi
fi