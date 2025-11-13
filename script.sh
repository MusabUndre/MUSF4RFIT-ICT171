#!/bin/bash

#This script backs up website files, check uptime status, and log all results for maintenance records.

# Set directories and filenames
backup_dir="/home/ubuntu/backup"
log_file="/home/ubuntu/maintenance_log.txt"
timestamp=$(date +"%Y-%m-%d %H:%M:%S")

# Create backup directory if it doesn't exist
mkdir -p $backup_dir

# Perform website backup
tar -czf $backup_dir/website_backup_$(date +%Y%m%d_%H%M%S).tar.gz /var/www/html

# Check if Apache web server is running
if systemctl is-active --quiet apache2; then
    status="Apache is running."
else
    status="Apache is not running."
fi

# Verify if the site is reachable (HTTP 200)
if curl -Is https://musf4rfits.site | grep "200 OK" > /dev/null; then
    site_status="Website is reachable and online."
else
    site_status="Website is not reachable."
fi

# Append results to log file
{
  echo "-------------------------------------------"
  echo "Maintenance check at: $timestamp"
  echo "$status"
  echo "$site_status"
  echo "Backup stored in: $backup_dir"
  echo "-------------------------------------------"
} >> $log_file

echo "Maintenance completed successfully!"
echo "Details logged in $log_file"
