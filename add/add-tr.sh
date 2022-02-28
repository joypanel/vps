#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.me/ip);
clear
uuid=$(cat /etc/trojan/uuid.txt)
source /var/lib/premium-script/ipvps.conf
domain=$(cat /etc/v2ray/domain)
tr="$(cat ~/log-install.txt | grep -i "Trojan-GFW" | cut -d: -f2|sed 's/ //g')"
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${user_EXISTS} == '0' ]]; do
                echo -e "Name : Create Trojan-GFW Account"
                echo -e "================================="
		read -rp "Password: " -e user
		user_EXISTS=$(grep -w $user /etc/trojan/akun.conf | wc -l)

		if [[ ${user_EXISTS} == '1' ]]; then
			echo ""
			echo "A client with the specified name was already created, please choose another name."
			exit 1
		fi
	done
read -p "Expired (days): " masaaktif
read -p "BUG TELCO : " BUG
sed -i '/"'""$uuid""'"$/a\,"'""$user""'"' /etc/trojan/config.json
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
echo -e "### $user $exp" >> /etc/trojan/akun.conf
systemctl restart trojan
trojanlink1="trojan://${user}@${domain}:${tr}"
trojanlink2="trojan://${user}@dns.google.${domain}:${tr}?sni=${BUG}#${user}"
clear
echo -e ""
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "              Trojan             "
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "Remarks        : ${user}"
echo -e "Host/IP        : ${domain}"
echo -e "port           : ${tr}"
echo -e "Key            : ${user}"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "Normal URI     : ${trojanlink1}"
echo -e "Plug & Play URI: ${trojanlink2}"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "Expired On     : $exp"
echo -e ""
