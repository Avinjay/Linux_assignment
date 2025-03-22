#!/bin/bash
# Backup script for Apache and Nginx servers on Debian/Ubuntu

# Define variables
date=`date +"%Y-%m-%d-%H-%M-%S"`
nginx_backup_dir="//backups/nginx_backup_$date.tar.gz"
log_file="/home/avinjay/log/nginx_backup_"$date".log"

tar -czf "$nginx_backup_dir" /etc/nginx/ /usr/share/nginx/html/

# Verify backups and log results
echo "Backup Verification - $date" > "$log_file"
if tar -tzf "$nginx_backup_dir" &>/dev/null; then
    echo "Nginx backup ($nginx_backup_dir) is valid." >> "$log_file"
else
    echo "Nginx backup ($nginx_backup_dir) is corrupted!" >> "$log_file"
fi

# Display log file
tail -n 100 "$log_file"
