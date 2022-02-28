#!/bin/bash
DF='\e[39m'
Bold='\e[1m'
Blink='\e[5m'
yell='\e[33m'
red='\e[1;31m'
green='\e[1;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.co);
echo "Checking VPS"
#EDIT IZIN
versi=$(cat /home/version)
if [[ $versi == 2.0 ]]; then
echo "You Have The Latest Version"
exit 0
fi
clear
echo -e "$green   =============================================$NC"
echo -e "$green                     UPDATE SCRIPT        $NC"
echo -e "$green   =============================================$NC"
sleep 5
cd /usr/bin
wget -O menu "https://raw.githubusercontent.com/joypanel/vps/main/menu/menu.sh"
# menu ssh-ovpn
wget -O m-sshovpn "https://raw.githubusercontent.com/joypanel/vps/main/menu/m-sshovpn.sh"
# menu wg
wget -O m-wg "https://raw.githubusercontent.com/joypanel/vps/main/menu/m-wg.sh"
# menu ssr
wget -O m-ssr "https://raw.githubusercontent.com/joypanel/vps/main/menu/m-ssr.sh"
# menu xray
wget -O xray-vmess "https://raw.githubusercontent.com/joypanel/vps/main/menu/xray-vmess.sh"
wget -O xray-vless "https://raw.githubusercontent.com/joypanel/vps/main/menu/xray-vless.sh"
wget -O xray-xtls "https://raw.githubusercontent.com/joypanel/vps/main/menu/xray-xtls.sh"
# menu trojan
wget -O m-trojan "https://raw.githubusercontent.com/joypanel/vps/main/menu/m-trojan.sh"
# menu system
wget -O m-system "https://raw.githubusercontent.com/joypanel/vps/main/menu/m-system.sh"
chmod +x menu
chmod +x m-sshovpn
chmod +x m-wg
chmod +x m-ssr
chmod +x xray-vmess
chmod +x xray-vless
chmod +x xray-xtls
chmod +x m-trojan
chmod +x m-system
cd
rm /home/version
echo "2.0" > /home/version
clear
echo " Fix minor Bugs"
echo " Now You Can Change Port Of Some Services"
