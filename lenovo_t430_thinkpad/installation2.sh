################# Automatically ##############

#### INSTALL STANDARD-PROGRAMMS
echo "Install standard-programms"
echo " [exec] sudo apt-get install vim"
read tmp
sudo apt-get install vim
echo " [exec] cp installation_files/myvim ~/.vimrc"
read tmp
cp installation_files/myvim ~/.vimrc

echo " [exec] sudo apt-get install gcc"
read tmp
sudo apt-get install gcc
echo " [exec] sudo apt-get install g++"
read tmp
sudo apt-get install g++
echo " [exec] sudo apt-get install tree"
read tmp
sudo apt-get install tree
echo " [exec] sudo apt-get install git"
read tmp
sudo apt-get install git
echo " [exec] sudo apt-get install checkinstall"
read tmp
sudo apt-get install checkinstall


#### INSTALL WLAN-interface
echo " [exec] sudo apt-get install firmware-iwlwifi"
read tmp
sudo apt-get install firmware-iwlwifi
echo " [exec] sudo modprobe -r iwlwifi"
read tmp
sudo modprobe -r iwlwifi
echo " [exec] sudo modprobe iwlwifi"
read tmp
sudo modprobe iwlwifi
echo " set up your /etc/network/interfaces like this:"
cat installation_files/network_interfaces
read tmp
echo " [exec] sudo apt-get install wpasupplicant"
read tmp
sudo apt-get install wpasupplicant
echo " [exec] sudo cp installation_files/eduroam_old.pem /etc/ssl/certs/"
read tmp
sudo cp installation_files/eduroam_old.pem /etc/ssl/certs/
echo " please configure your networks now"
read tmp
echo " add wpa_supplicant to start during system-startup now - look at this etc/rc.local:"
cat installation_files/backup_lookup/etc_rc.local
read tmp
echo " sudo apt-get install dhcpcd5"
read tmp
sudo apt-get install dhcpcd5
echo " make dhcpcd load in background, so that it does not slow down startup now - changes in initd_dhcpcd"
cat installation_files/backup_lookup/changes_in_initd_dhcpcd
read tmp


#### INSTALL GUI --- http://erikdubois.be/how-to-install-i3-on-arch-linux/
echo "Install xorg"
echo " [exec] sudo apt-get install xorg"
read tmp
sudo apt-get install xorg
#xorg-server xorg-apps xorg-xinit xorg-twm xterm --noconfirm --needed
echo ""
echo "Install lilyterm"
echo " [exec] sudo apt-get install lilyterm"
read tmp
sudo apt-get install lilyterm
sudo " [exec] mkdir -p ~/.config/lilyterm"
mkdir -p ~/.config/lilyterm
echo " [exec] cp installation_files/lilyterm.conf ~/.config/lilyterm/default.conf"
read tmp
cp installation_files/lilyterm.conf ~/.config/lilyterm/default.conf
echo ""
echo "Install graphics-driver"
# For Intel-graphics-cards
echo " [exec] sudo apt-get install xserver-xorg-video-intel"
read tmp
sudo apt-get install xserver-xorg-video-intel
#(xf86-video-intel) --noconfirm --needed # xf86-video-intel predecessor
echo " [exec] sudo apt-get install slim"
read tmp
sudo apt-get install slim 
echo " install slim-theme in /usr/share/slim/themes/"
echo " set current_theme in /etc/slim.conf to be used"
read tmp
echo " [exec] sudo apt-get install i3"
read tmp
sudo apt-get install i3
echo " [exec] mkdir ~/.i3"
read tmp
mkdir ~/.i3
echo " [exec] cp installation_files/myi3 ~/.i3/config"
read tmp
cp installation_files/myi3 ~/.i3/config
echo " [exec] sudo apt-get install libnotify-bin"
read tmp
sudo apt-get install libnotify-bin



#### INSTALL FINGERPRINT SENSOR - http://www.thinkwiki.org/wiki/How_to_enable_integrated_fingerprint_reader_with_fprint
echo ""
echo ""
echo "INSTALL FINGERPRINT SENSOR"
echo " [exec] sudo apt-get install software-properties-common"
read tmp
sudo apt-get install software-properties-common
echo " [exec] sudo apt-get install dirmngr"
read tmp
sudo apt-get install dirmngr
echo " [exec] sudo add-apt-repository ppa:fingerprint/fprint"
read tmp
sudo add-apt-repository ppa:fingerprint/fprint
echo " [exec] sudo apt-get install libpam-fprintd"
read tmp
sudo apt-get install libpam-fprintd
echo ""
echo " [info] The needed lines in common-auth should now be present:"
echo " [info] exec: grep fprint /etc/pam.d/common-auth"
echo " [info] ? -> auth	[success=2 default=ignore] pam_fprintd.so"
echo " [info] recommended: auth [success=2 default=ignore] pam_fprintd.so max_tries=3 timeout=-1
echo ""
echo " [info] To configure your fingerprint:"
echo " [info] exec: fprintd-enroll"
echo ""
echo " [info] To eliminate fingerprint authentication from the display manager login do the followeing"
echo " [info] exec: sudo cp /etc/pam.d/common-auth /etc/pam.d/common-auth-nofinger"
read tmp

#### Sound
echo ""
echo ""
echo "Re/Installing audio driver"
echo " [exec] sudo apt-get purge alsa-*"
read tmp
sudo apt-get purge alsa-*
echo " [exec] sudo apt-get purge pulseaudio"
read tmp
sudo apt-get purge pulseaudio
echo " [exec] sudo apt-get install alsa-base alsa-utils"
read tmp
sudo apt-get install alsa-base alsa-utils
echo " [exec] sudo apt-get install libasound2-dev"
read tmp
sudo apt-get install libasound2-dev
echo " [exec] sudo cp installations/alsa-base.conf /etc/modprobe.d/alsa-base.conf"
read tmp
sudo cp installation_files/alsa-base.conf /etc/modprobe.d/alsa-base.conf
echo " [exec] sudo alsactl init"
read tmp
sudo alsactl init




#### configure touchpad (cofigurations suits)
#### tap, double-tap, triple-tap, two-finger swipe, palm-detection
echo " [exec] sudo mkdir -p /etc/X11/xorg.conf.d"
read tmp
sudo mkdir -p /etc/X11/xorg.conf.d
echo " [exec] sudo cp installation_files/11-touchpad.conf /etc/X11/xorg.conf.d/"
read tmp
sudo cp installation_files/11-touchpad.conf /etc/X11/xorg.conf.d/


#### additional programms
echo " [exec] sudo apt-get install evince"
read tmp
sudo apt-get install evince
echo " [exec] sudo apt-get install gpicview"
read tmp
sudo apt-get install gpicview
echo " [exec] sudo apt-get install zip"
read tmp
sudo apt-get install zip
echo " [exec] sudo apt-get install gimp"
read tmp
sudo apt-get install gimp
echo " [exec] sudo apt-get install audacity"
read tmp
sudo apt-get install audacity
echo " [exec] sudo apt-get install meld"
read tmp
sudo apt-get install meld
echo " [exec] sudo apt-get install firefox-esr"
read tmp
sudo apt-get install firefox-esr
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
read tmp
## SPOTIFY
echo " install spotify"
echo " [exec] sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410"
read tmp
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo " [exec] echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list"
read tmp
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
read tmp
echo " [exec] sudo apt-get update"
read tmp
sudo apt-get update
echo " [exec] sudo apt-get install spotify-client"
read tmp
sudo apt-get install spotify-client


# ### install batterynotifier
# cp installation_files/my_scripts/batterynotifier.py /usr/local/zmann_bin
# cp installation_files/my_scripts/.customisations.py /usr/local/zmann_bin
# 
# ### install backlight_control
# cp installation_files/my_scripts/backlight_control.py /usr/local/zmann_bin

### performance-tools
echo " [info] install tlp: look for 'man tlp' and '/etc/default/tlp'"
echo " [exec] sudo apt-get install tlp tlp-rdw tp-smapi-dkms acpi-call-dkms"
read tmp
sudo apt-get install tlp tlp-rdw tp-smapi-dkms acpi-call-dkms
echo " [exec] sudo mv /etc/default/tlp /etc/default/tlp_auto"
read tmp
sudo mv /etc/default/tlp /etc/default/tlp_auto
echo " [exec] sudo cp installation_files/tlp_config /etc/default/tlp"
read tmp
sudo cp installation_files/tlp_config /etc/default/tlp

echo " [info] install linux-cpupower: look for 'sudo man x86_energy_perf_policy'"
echo " [exec] sudo apt-get install linux-cpupower"
read tmp
sudo apt-get install linux-cpupower

echo " [exec] sudo apt-get install thunar"
read tmp
sudo apt-get install thunar
echo " [exec] sudo apt-get install mplayer"
read tmp
sudo apt-get install mplayer
echo " [exec] sudo apt-get install libreoffice"
read tmp
sudo apt-get install libreoffice
echo " [exec] sudo apt-get install android-tools-adb"
read tmp
sudo apt-get install android-tools-adb

echo " [exec] sudo dpkg -i installation_files/logmein-hamachi_2.1.0.165-1_amd64.deb"
sudo dpkg -i installation_files/logmein-hamachi_2.1.0.165-1_amd64.deb
echo " [exec] sudo apt-get install logmein-hamachi"
read tmp
sudo apt-get install logmein-hamachi
sleep 5

echo " [exec] sudo apt-get install ntp"
read tmp
sudo apt-get install ntp
echo " configure ntp like this:"
cat installation_files/backup_lookup/etc_ntp.conf
read tmp


echo " install my_scripts now manually into /usr/local/zmann_bin now"
read tmp

echo " add now manually PATH zmann_bin now to PATH in /etc/profile like this:"
cat installation_files/backup_lookup/etc_profile
read tmp

echo " do you want to change /etc/fstab for some automounts?:"
cat installation_files/backup_lookup/etc_fstab
read tmp

echo " add some lines in sudoers in order for some scripts to work without password like this:"
cat installation_files/backup_lookup/etc_sudoers
read tmp


echo " add energy-policy setting now to /etc/rc.local like this:"
cat installation_files/backup_lookup/etc_rc.local


echo " remove K01logmein-hamachi and S01logmein-hamachi from all runlevels now"
read tmp


echo " [exec] cp installation_files/myxsession ~/.xsession"
read tmp
cp installation_files/myxsession ~/.xsession
