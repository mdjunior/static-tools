# Network 
/mnt/cdrom/netstat -apn >> netstat_apn.txt
/mnt/cdrom/netstat -nr >> netstat_nr.txt

# Users
/mnt/cdrom/w >> w.txt
/mnt/cdrom/last >> last.txt

# Processes
/mnt/cdrom/ps -auxwwwe >> ps_auxwwwe.txt

# Open sockets
/mnt/cdrom/lsof -b -l -P -X -n -o -R -U >> lsof_blPXnoRU.txt

# Mounted devices
/mnt/cdrom/cat /proc/mounts >> proc_mounts.txt

# Loaded kernel modules
/mnt/cdrom/cat /proc/modules >> proc_modules.txt

# systemd journal
journalctl --list-boots >> journalctl.list-boots.txt
journalctl --dmesg >> journalctl.dmesg.txt

