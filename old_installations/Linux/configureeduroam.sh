echo "[Script] installing wicd and configure it for eduroam"
sudo apt-get install wicd
mv eduroam_wlan/peap-mschapv2 /etc/wicd/encryption/templates
echo "peap-mschapv2" >> /etc/wicd/encryption/templates/active
