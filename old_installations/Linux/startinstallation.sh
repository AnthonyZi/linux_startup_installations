echo "[SCRIPT] system update..."
sudo apt-get update
sudo apt-get upgrade

echo "[SCRIPT] installation of basic programms"
sudo apt-get install vim
sudo apt-get install gcc
sudo apt-get install g++
sudo apt-get install tree
sudo apt-get install git

echo "[SCRIPT] configuration of vim"
cp /personalisation/myvim .vimrc
mv .vimrc ~/
