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
echo " [exec] sudo apt-get insall wicd wicd-curses"
sudo apt-get install wicd wicd-curses
echo " [exec] sudo cp installation_files/peap-mschapv2 /etc/wicd/encryption/templates"
sudo cp installation_files/peap-mschapv2 /etc/wicd/encryption/templates
echo " [exec] sudo sh -c 'echo "peap-mschapv2" >> /etc/wicd/encryption/templates/active'"
sudo sh -c "echo "peap-mschapv2" >> /etc/wicd/encryption/templates/active"


#### INSTALL GUI --- http://erikdubois.be/how-to-install-i3-on-arch-linux/
echo "Install xorg"
echo " [exec] sudo apt-get install xorg"
sudo apt-get install xorg
#xorg-server xorg-apps xorg-xinit xorg-twm xterm --noconfirm --needed
echo ""
echo "Install xterm"
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
