ip link set dev wlan0 down
systemctl stop hostapd
systemctl stop dnsmasq
ip addr flush dev wlan0
ip link set dev wlan0 up
dhcpcd -n wlan0 > /dev/nul
wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf
hostname -I

