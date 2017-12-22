echo "[SCRIPT] deactivate swapping consistent"
sudo service dphys-swapfile stop
until [ $(free | grep Swap | tr -cd [:digit:] | sed s/0*0/0/g) -le 0 ]
do
        sleep 2s
done
sudo apt-get purge dphys-swapfile
