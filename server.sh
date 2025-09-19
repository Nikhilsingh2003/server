#!/bin/bash

echo "===== Server Performance Stats ====="

# Total CPU usage
echo -e "\n[CPU Usage]"
mpstat | awk 'NR==4 {printf "CPU Used: %.2f%%\n", 100-$13}'

# Total Memory usage (Free vs Used including percentage)
echo -e "\n[Memory Usage]"
free -m | awk 'NR==2{printf "Memory Used: %sMB (%.2f%%)\nMemory Free: %sMB (%.2f%%)\n", $3, $3*100/$2, $4, $4*100/$2 }'

# Total Disk usage (Free vs Used including percentage)
echo -e "\n[Disk Usage]"
df -h --total | awk '/total/ {gsub(/%/,"",$5); printf "Disk Used: %s (%s%%)\nDisk Free: %s (%.2f%%)\n", $3, $5, $4, 100-$5 }'

# Top 5 processes by CPU usage
echo -e "\n[Top 5 Processes by CPU]"
ps aux --sort=-%cpu | head -6

# Top 5 processes by Memory usage
echo -e "\n[Top 5 Processes by Memory]"
ps aux --sort=-%mem | head -6
