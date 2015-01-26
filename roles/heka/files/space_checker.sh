#!/usr/bin/env bash

log()
{
    if [ "$1" ]; then
            echo -e "space-checker[`hostname`|ALERT|`date '+%Y-%m-%d %H:%M:%S'`]: $1" | nc 127.0.0.1 5566 || true
            echo $1
    fi
}
log "$(df | awk 'NR>0 && int($5)>80 { print "More than 80% used on "$1 }')"