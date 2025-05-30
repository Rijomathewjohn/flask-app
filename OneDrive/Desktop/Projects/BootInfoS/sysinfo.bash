#!/bin/bash

echo "===== CPU Usage ====="
top -b -n1 | grep "Cpu(s)"

echo -e "\n===== Memory Usage (MB) ====="
free -m

echo -e "\n===== Disk Usage (Root Partition) ====="
df -h /

echo -e "\n===== System Uptime ====="
uptime -p

echo -e "\n===== Logged-in Users ====="
who
echo -n "Number of logged-in users: "
who | wc -l

echo -e "\n===== Top Processes by Memory Usage ====="
ps aux --sort=-%mem | awk 'NR==1 || NR<=10 {printf "%-10s %-10s %-5s %s\n", $1, $2, $4, $11}'
