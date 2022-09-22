#!/bin/bash

LOG_LEVEL=INFO
/usr/sbin/glusterd -p /var/run/glusterd.pid  --log-level $LOG_LEVEL $GLUSTERD_OPTIONS

tail -f /var/log/glusterfs/glusterd.log &

exec "$@"
