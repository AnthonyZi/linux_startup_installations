apt-get install xorg
./add_backport_sources.sh
apt-get install linux-headers-`uname -r`
apt-get update
apt-get install -t jessie-backports nvidia-driver
