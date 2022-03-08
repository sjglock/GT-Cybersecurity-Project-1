#!/bin/bash/


# Print free memory on the system and save to text file.
# Print disk usage and saves it to text file.
# Print list of all open files and saves it to text file.
# Print file system disk space statistics and saves it to text file.


free -h > ~/backups/freemem/free_mem.txt

du -h > ~/backups/diskuse/disk_usage.txt

lsof > ~/backups/openlist/open_list.txt

df -h > ~/backups/freedisk/free_disk.txt
