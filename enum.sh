#!/bin/bash
for ip in ${1}.{1..254}; do
	ping -c 1 -W 1 $ip | grep "64 bytes" &
done | cut -d\: -f1 | cut -d\  -f4
