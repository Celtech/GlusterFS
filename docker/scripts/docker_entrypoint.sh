#!/bin/bash

LOG_LEVEL=INFO
/usr/sbin/glusterd -p /var/run/glusterd.pid  --log-level $LOG_LEVEL $GLUSTERD_OPTIONS

sleep 10s
gluster peer probe gluster-1
gluster peer probe gluster-2
gluster peer probe gluster-3

tail -f /var/log/glusterfs/glusterd.log &

exec "$@"
