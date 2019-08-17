# mac-robber
/mnt/cdrom/mac-robber /mnt/root > body.mac

# copy logs
/mnt/cdrom/mkdir var_logs
/mnt/cdrom/cp -r /mnt/root/var/log/* var_logs/

# Configuration files
/mnt/cdrom/mkdir etc
/mnt/cdrom/cp -r /mnt/root/etc/ etc/

# crontab
/mnt/cdrom/mkdir crontab_data
/mnt/cdrom/cp -r /mnt/root/var/spool/cron/ crontab_data/
/mnt/cdrom/cp /mnt/root/etc/crontab crontab_data/
/mnt/cdrom/cp -r /mnt/root/etc/cron.* crontab_data/

# instaled software 
/mnt/cdrom/mkdir apt_data dpkg_data
/mnt/cdrom/cp /mnt/root/var/log/apt/term.log apt_data/
/mnt/cdrom/cp /mnt/root/var/log/apt/history.log apt_data/
/mnt/cdrom/cp /mnt/root/var/lib/dpkg/status dpkg_data/
/mnt/cdrom/ls -lah /mnt/root/var/lib/dpkg/info/ >>  dpkg_data/files.info.txt

# kernel modules
/mnt/cdrom/mkdir kernel_mods kernel_mods_data kernel_mods_load
/mnt/cdrom/cp -r /mnt/root/etc/modprobe.d/ kernel_mods/
/mnt/cdrom/cp /mnt/root/etc/modules kernel_mods_data/
/mnt/cdrom/cp -r /mnt/root/etc/modules-load.d/ kernel_mods_load/

# coredumped process
/mnt/cdrom/ls -lah /mnt/root/var/lib/systemd/coredump/ >> coredumped.txt

# copy MBR 
/mnt/cdrom/mkdir mbr
/mnt/cdrom/dd if=/dev/sda of=mbr/bootsector.dd bs=512 count=1

# grub data
/mnt/cdrom/mkdir grub_data
/mnt/cdrom/cp /mnt/root/boot/grub/grub.cfg grub_data/

