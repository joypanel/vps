#!/bin/bash
RED='\e[1;31m'
GREEN='\e[0;32m'
BLUE='\e[0;34m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.co);
echo "Checking VPS"
echo "Tukar Domain?"
select yn in "Yes" "No"; do
    case $yn in
        Yes) make install ; break ;;
        No) exit ;;
    esac
done
clear
clear
echo -e  "   .-------------------------------------------------------."
echo -e  "   |                 ADD HOST/DOMAIN MENU                  |"
echo -e  "   '-------------------------------------------------------'"
echo ""
echo -e "Masukkan Domain"
read -p "Hostname / Domain: " host
rm -f /var/lib/premium-script/ipvps.conf
rm -f /root/domain
rm -f /etc/v2ray/domain
echo "Masukkan Domain Sekali Lagi "
read -p "Domain/Host: " -e host
echo "IP=$host" >> /var/lib/premium-script/ipvps.conf
echo "$host" >> /root/domain
echo "$host" >> /etc/v2ray/domain
#Done
echo -e "[${GREEN}Done${NC}]"
sleep 2
clear
