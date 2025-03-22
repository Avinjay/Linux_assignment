#!/bin/bash
# Backup script for Apache servers on Debian/Ubuntu

# Define variables
date=`date +"%Y-%m-%d-%H-%M-%S"`
apache_backup_dir="/home/sarah/backups/apache_backup_$date.tar.gz"
log_file="/home/sarah/log/backup_"$date".log"

tar -czf "$apache_backup_dir" /etc/apache2/ /var/www/html/


# Verify backups and log results
echo "Backup Verification - $date" >> "$log_file"
if tar -tzf "$apache_backup_dir" &>/dev/null; then
    echo "Apache backup ($apache_backup_dir) is valid." >> "$log_file"
else
    echo "Apache backup ($apache_backup_dir) is corrupted!" >> "$log_file"
fi


# Display log file
tail -n 100 "$log_file"
