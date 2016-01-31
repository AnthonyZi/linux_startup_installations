sudo rmmod -f ath5k #force erase of kernel module  ath5k (Atheros Wifi Adapter)
sudo modprobe ath5k #load ath5k back again!

sudo ifconfig wlan0 down
sudo ifconfig wlan0 up
