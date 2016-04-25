apt-get install ntp

mv /etc/ntp.conf /etc/ntp.conf_old
less /etc/ntp.conf_old | sed s/debian.pool.ntp.org\ iburst/de.pool.ntp.org/g > /etc/ntp.conf
