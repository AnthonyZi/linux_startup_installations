# ################# Manually #############
# #### INSTALL SUDO
# #echo " [exec] su root"
# #su root
# #following can be done automatically
# echo " [info] automatically adjust /etc/apt/sources.list for debian jessie"
# echo " [exec] cat sources_debian_jessie > /etc/apt/sources.list"
# cat installation_files/sources_debian_jessie > /etc/apt/sources.list
# echo " [exec] apt-get update"
# apt-get update
# echo " [exec] apt-get upgrade"
# apt-get upgrade
# echo " [exec] apt-get install sudo"
# apt-get install sudo
# echo " [exec] apt-get install usermod"
# apt-get install usermod
# echo ""
# echo " [info] exec: usermod -aG sudo [username] to add [username] to sudoers-group"
# exit



################# Automatically ##############

#### INSTALL STANDARD-PROGRAMMS
echo "Install standard-programms"
echo " [exec] sudo apt-get install vim"
sudo apt-get install vim
echo " [exec] cp installation_files/myvim ~/.vimrc"
cp installation_files/myvim ~/.vimrc

echo " [exec] sudo apt-get install gcc"
sudo apt-get install gcc
echo " [exec] sudo apt-get install g++"
sudo apt-get install g++
echo " [exec] sudo apt-get install tree"
sudo apt-get install tree
echo " [exec] sudo apt-get install git"
sudo apt-get install git


#### INSTALL WLAN-interface
#echo " [exec] sudo apt-get insall wicd wicd-curses"
#sudo apt-get install wicd wicd-curses
#echo " [exec] sudo cp installation_files/peap-mschapv2 /etc/wicd/encryption/templates"
#sudo cp installation_files/peap-mschapv2 /etc/wicd/encryption/templates
#echo " [exec] sudo sh -c 'echo "peap-mschapv2" >> /etc/wicd/encryption/templates/active'"
#sudo sh -c "echo "peap-mschapv2" >> /etc/wicd/encryption/templates/active"
#echo " [exec] sudo apt-get install network-manager-gnome"
#sudo apt-get install network-manager-gnome
#echo " [info] start network-manager with 'nm-applet' > boot this applet with every startup, e.g. in the i3-config"
#echo " [exec] ./installation_files/eduroam-linux-RAU.sh"
#./installation_files/eduroam-linux-RAU.sh
echo " [exec] sudo apt-get install wpa_supplicant"
sudo apt-get install wpa_supplicant
echo " sudo apt-get install dhcpcd"
sudo apt-get install dhcpcd
echo " [info] create file 'wpa.conf' and start wpa_supplicant like this:"
echo " [info]   sudo wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant/wpa.conf"
echo " [info]   sudo dhcpcd"


#### INSTALL GUI --- http://erikdubois.be/how-to-install-i3-on-arch-linux/
echo "Install xorg"
echo " [exec] sudo apt-get install xorg"
sudo apt-get install xorg
#xorg-server xorg-apps xorg-xinit xorg-twm xterm --noconfirm --needed
echo ""
echo "Install lilyterm"
echo " [exec] sudo apt-get install lilyterm"
sudo apt-get install lilyterm
cp installation_files/lilyterm.conf ~/.config/lilyterm/default.conf
# [optional choice] echo " [exec] sudo apt-get install xterm"
# [optional choice] sudo apt-get install xterm
echo ""
echo "Install graphics-driver"
# For Intel-graphics-cards
echo " [exec] sudo apt-get install xf86-video-intel"
sudo apt-get install xf86-video-intel
#xf86-video-intel --noconfirm --needed
echo " [exec] sudo apt-get install slim"
sudo apt-get install slim 
echo " [exec] sudo apt-get install i3"
sudo apt-get install i3
echo " [exec] sudo apt-get install libnotify-bin"
sudo apt-get install libnotify-bin
echo " [exec] cp installation_files/myxsession ~/.xsession"
cp installation_files/myxsession ~/.xsession


#### INSTALL FINGERPRINT SENSOR - http://www.thinkwiki.org/wiki/How_to_enable_integrated_fingerprint_reader_with_fprint
echo ""
echo ""
echo "INSTALL FINGERPRINT SENSOR"
echo " [exec] sudo add-apt-repository ppa:fingerprint/fprint"
sudo add-apt-repository ppa:fingerprint/fprint
echo " [exec] sudo apt-get install libpam-fprintd"
sudo apt-get install libpam-fprintd
echo ""
echo " [info] The needed lines in common-auth should now be present:"
echo " [info] exec: grep fprint /etc/pam.d/common-auth"
echo " [info] ? -> auth	[succes=2 default=ignore] pam_fprintd.so"
echo ""
echo " [info] To configure your fingerprint:"
echo " [info] exec: fprintd-enroll"
echo ""
echo " [info] To eliminate fingerprint authentication from the display manager login do the followeing"
echo " [info] exec: sudo cp /etc/pam.d/common-auth /etc/pam.d/common-auth-nofinger"

#### Sound
echo ""
echo ""
echo "Re/Installing audio driver"
echo " [exec] sudo apt-get purge alsa-*"
sudo apt-get purge alsa-*
echo " [exec] sudo apt-get purge pulseaudio"
sudo apt-get purge pulseaudio
echo " [exec] sudo apt-get install alsa-base alsa-utils"
sudo apt-get install alsa-base alsa-utils
echo " [exec] sudo apt-get install libasound2-dev"
sudo apt-get install libasound2-dev
echo " [exec] sudo cp installations/alsa-base.conf /etc/modprobe.d/alsa-base.conf"
sudo cp installation_files/alsa-base.conf /etc/modprobe.d/alsa-base.conf
echo " [exec] sudo alsactl init"
sudo alsactl init




#### configure touchpad (cofigurations suits)
#### tap, double-tap, triple-tap, two-finger swipe, palm-detection
echo " [exec] sudo cp installation_files/11-touchpad.conf /etc/X11/xorg.conf.d/"
sudo cp installation_files/11-touchpad.conf /etc/X11/xorg.conf.d/


#### additional programms
echo " [exec] sudo apt-get install evince"
sudo apt-get install evince
echo " [exec] sudo apt-get install gpicview"
sudo apt-get install gpicview
echo " [exec] sudo apt-get install zip"
sudo apt-get install zip
echo " [exec] sudo apt-get install gimp"
sudo apt-get install gimp
echo " [exec] sudo apt-get install audacity"
sudo apt-get install audacity
echo " [exec] sudo apt-get install iceweasel"
sudo apt-get install iceweasel
echo " [info] install following manually:"
echo " [info] "
echo " [info] ADDON : Adblock Plus"
echo " [info] ADDON : Firebug"
echo " [info] ADDON : NoScript"
echo " [info] ADDON : VimFx"
echo " [info] "
echo " [info] install adobe flash player manually"
echo " [info] "
echo " [info] make "startpage" your standard search-engine!"
echo " [exec] sudo apt-get install meld"
sudo apt-get install meld
## SPOTIFY
echo " [exec] sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo " [exec] echo deb http://repository.spotify.com testing non-free | sudo tee /etc/apt/sources.list.d/spotify.list"
echo deb http://repository.spotify.com testing non-free | sudo tee /etc/apt/sources.list.d/spotify.list
echo " [exec] sudo apt-get update"
sudo apt-get update
echo " [exec] sudo apt-get install spotify-client"
sudo apt-get install spotify-client

### install batterynotifier
cp installation_files/batterynotifier.py /usr/local/bin
cp installation_files/.customisations.py /usr/local/bin

### install backlight_control
cp installation_files/backlight_control.py /usr/local/bin

### performance-tools
echo " [info] install tlp: look for 'man tlp' and '/etc/default/tlp'"
echo " [exec] sudo apt-get install tlp tlp-rdw tp-smapi-dkms acpi-call-dkms"
sudo apt-get install tlp tlp-rdw tp-smapi-dkms acpi-call-dkms
echo " [exec] sudo mv /etc/default/tlp /etc/default/tlp_auto"
sudo mv /etc/default/tlp /etc/default/tlp_auto
echo " [exec] sudo cp installation_files/tlp_config /etc/default/tlp"
sudo cp installation_files/tlp_config /etc/default/tlp
echo " [info] install linux-cpupower: look for 'sudo man x86_energy_perf_policy'"
echo " [exec] sudo apt-get install linux-cpupower"
sudo apt-get install linux-cpupower

