echo "configuring xorg.conf for Display and Touchpad drivers"
if [ -d /etc/X11 ]
then
        if [ -e /etc/X11/xorg.conf ]
        then
                echo "saving copy of /etc/X11/xorg.conf in /etc/X11/xorg.conf_old"
                cp /etc/X11/xorg.conf /etc/X11/xorg.conf_old
        fi
        cp HardwareConf/xorg.conf /etc/X11
else
        echo "/etc/X11 does not exist"
fi
