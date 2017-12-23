################# Manually #############
#### INSTALL SUDO
#echo " [exec] su root"
#su root
#following can be done automatically
echo " [info] adjust /etc/apt/sources.list for debian jessie like this:"
read tmp
cat installation_files/backup_lookup/sources_debian_jessie
read tmp
echo " [exec] apt-get update"
read tmp
apt-get update
echo " [exec] apt-get upgrade"
read tmp
apt-get upgrade
echo " [exec] apt-get install sudo"
read tmp
apt-get install sudo
echo " [exec] apt-get install usermod"
read tmp
apt-get install usermod
echo ""
echo " [info] exec: usermod -aG sudo [username] to add [username] to sudoers-group"
read tmp
exit
