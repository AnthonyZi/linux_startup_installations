apt-get install i3-wm
apt-get install slim
systemctl enable slim
#systemctl start slim

apt-get install i3
cp myi3 ~/.i3/config
cp myi3workspaces ~/.i3/.workspaces

echo "#!/bin/bash" >> ~/.xsession
echo "exec i3" >> ~/.xsession

apt-get install libnotify-bin

XSESSIONSTR=$(less ~/.xsession | grep -v exec)
echo $XSESSIONSTR >> ~/.xsession
less xautologconfig >> ~/.xsession
echo "exec i3" >> ~/.xsession


systemctl start slim
