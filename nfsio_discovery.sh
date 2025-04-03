#!/bin/bash
# ============================================================
# Author: Dmitry Malinin 
# E.mail: dmitry@malinin.com
# Blog: http://zabbix.guru
# Filename: nfsio_discovery.sh
# Modified: 2024-09-26 
# Description: Discovery NFS mountpoints.
#
# Parameters:
#
# NONE
#
# ===========================================================

array="$(findmnt -lo target -n -t nfs,nfs4)"

# If array is empty, return empty JSON
if [[ -z "$array" ]]; then
    printf '%s' '{"data":[]}'
    exit 0
fi

comma=""
printf '%s' '{"data":['

while IFS= read -r line ; do
        printf '%s' "$comma{\"{#MOUNT_POINT}\":\"$line\"}"
        comma=","
done <<< "$array"

printf '%s' ']}'
