#!/bin/bash

# Finds the amount of free system memory 
echo -e "System free memory:\n$(free -h)\n" > ~/backups/freemem/free_mem.txt

# Records disk usage
echo -e  "Disk usage:\n$(df -ht ext4)\n" > ~/backups/diskuse/disk_usage.txt

# Finds all open files
echo -e "Open files:\n\n$(lsof)\n" > ~/backups/openlist/open_list.txt

# Gets file system statistics
echo -e "File system space statistics:\n$(df -h)\n" > ~/backups/freedisk/free_d$