!/bin/bash

# Color
RED="\e[1;31m"
GREEN="\e[0;32m"
NC="\e[0m"


# // Input
read -p "Username   : " username
read -p "Expired    : " expired
read -p "BUG TELCO  : " BUG
domain=$(cat /root/domain)
uuid=$(cat /proc/sys/kernel/random/uuid)
exp=`date -d "$expired days" +"%Y-%m-%d"`
hariini=`date -d "0 days" +"%Y-%m-%d"`
port=$(cat /etc/xray-mini/config.json | grep port | sed 's/"//g' | sed 's/port//g' | sed 's/://g' | sed 's/,//g' | sed 's/       //g')

# // Input Data User Ke XRay Vless TCP XTLS
sed -i '/#XRay$/a\#DEPAN '"Username : $username | Expired : $exp"'\
            },{"id": "'""$uuid""'","flow": "'xtls-rprx-direct'"\
#BELAKANG '"Username : $username | Expired : $exp"'' /etc/xray-mini/config.json

IP=$( curl -s ipinfo.io/ip )

systemctl restart xray-mini
clear

echo -e ""
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "            XRAY TCP XTLS          "
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "Remarks        : ${username}"
echo -e "HOST IP        : ${IP}"
echo -e "Domain         : ${domain}"
echo -e "port XTLS      : $port"
echo -e "id             : ${uuid}"
echo -e "Encryption     : none"
echo -e "network        : tcp"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "link xtls-rprx-direct :"
echo " vless://$uuid@$domain:$port?security=xtls&encryption=none&headerType=none&type=tcp&flow=xtls-rprx-direct&sni=${BUG}#$username"
echo -e "link xtls-rprx-direct UDP:"
echo " vless://$uuid@$domain:$port?security=xtls&encryption=none&headerType=none&type=tcp&flow=xtls-rprx-direct-udp443&sni=${BUG}#$username"
echo -e "link xtls-rprx-splice :"
echo " vless://$uuid@$domain:$port?security=xtls&encryption=none&headerType=none&type=tcp&flow=xtls-rprx-splice&sni=${BUG}#$username"
echo -e "link xtls-rprx-splice UDP:"
echo " vless://$uuid@$domain:$port?security=xtls&encryption=none&headerType=none&type=tcp&flow=xtls-rprx-splice-udp443&sni=${BUG}#$username"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "Expired On     : $exp"
