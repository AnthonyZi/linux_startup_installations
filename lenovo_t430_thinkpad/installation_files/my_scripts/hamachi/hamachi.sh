#!/bin/bash
if [[ "$1" == "start" ]]
then
    sudo /etc/init.d/logmein-hamachi start
    sleep 2
    sudo hamachi login
    sleep 2
#    sudo hamachi attach cokelemon@gmx.de
#    sleep 2
#    sudo hamachi set-nick Assax
#    sleep 2
    echo "minecraft"
    sudo hamachi do-join 374-438-446
elif [[ "$1" == "stop" ]]
then
    sudo hamachi logout
    sleep 2
    sudo /etc/init.d/logmein-hamachi stop
    sleep 2
else
    echo "use 'hamachi start' or 'hamachi stop'"
fi

#Symlink "K01logmein-hamachi" removed from runlevels (rcX.d):
#rc0.d
#rc1.d
#rc6.d
#Symlink "S01logmein-hamachi" removed from runlevels (rcX.d):
#rc2.d
#rc3.d
#rc4.d
#rc5.d
