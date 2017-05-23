#!/bin/sh
# /etc/hotplug.d/iface/99-drcom

if [ "$ACTION" = ifup ]; then 
    if [ "${INTERFACE}" = "wan" ]; then
        sleep 3 && /bin/start.sh
    fi
fi