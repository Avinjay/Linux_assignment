#!/bin/bash

log_file="/home/avinjay/log/system_monitor.log"
date >> "$log_file"

echo "==== CPU Usage ====" >> "$log_file"
htop -b -n1 | head -n 10 >> "$log_file"

echo "==== Memory Usage ====" >> "$log_file"
free -h >> "$log_file"

echo "==== Disk Usage ====" >> "$log_file"
df -h >> "$log_file"

echo "==== Top Processes consuming (CPU) ====" >> "$log_file"
ps aux --sort=-%cpu | head -10 >> "$log_file"

echo "==== Top Processes consuming (Memory) ====" >> "$log_file"
ps aux --sort=-%mem | head -10 >> "$log_file"

echo "==== Largest Files in /var/log ====" >> "$log_file"
du -ah /var/log | sort -rh | head -10 >> "$log_file"

echo "===============================" >> "$log_file"
