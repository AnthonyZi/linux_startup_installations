#!/bin/bash

wlanarg=$1

wpafolder="/etc/wpa_supplicant"
wpafile="${wpafolder}/wpa_no_mobile.conf"
#wpa_extra_parameters=""

if [[ $1 == "help" ]]
then
    echo "usage:"
    echo "wlan.sh all       : wpa.conf with all available connections"
    echo "wlan.sh syburg    : use conf forcing syburg"
    echo "wlan.sh linda     : use conf forcing HONOR_KIW_5604"
    exit
fi

#force connection due to parameters in call
if [[ $wlanarg == "all" ]]
then
    echo "use wpa.conf containing all possible configured connections"
    wpafile="${wpafolder}/wpa_all.conf"
elif [[ $wlanarg == "syburg" ]]
then
    echo "force connection to syburg via syburg.conf"
    wpafile="${wpafolder}/syburg.conf"
elif [[ $wlanarg == "linda" ]]
then
    echo "force connection to linda's hotspot via linda_handy.conf"
    wpafile="${wpafolder}/linda_handy.conf"
elif [[ $wlanarg == "tschechien" ]]
then
    echo "force tschechien.conf containing hotspots in tschechien"
    wpafile="${wpafolder}/tschechien.conf"
elif [[ $wlanarg == "adhoc" ]]
then
    echo "force adhoc.conf containing ad-hoc configuration"
    wpafile="${wpafolder}/adhoc.conf"
#    wpa_extra_parameters="-D nl80211,wext"
else
    echo "use standard wpa_no_mobile.conf file searching for the best connection"
fi

sudo pkill dhcpcd
sudo pkill wpa_supplicant
sleep 1
sudo wpa_supplicant -B -i wlan0 -c $wpafile #$wpa_extra_parameters
sudo dhcpcd
