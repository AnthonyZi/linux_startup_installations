for (( i=0 ; i< 24; i++ ))
do
        if [ "$(less ~/.i3/.workspaces/useconfig)" == "yes" ]
        then
                ~/.i3/.workspaces/uni.sh
                i=24
        fi

        sleep 5
done
