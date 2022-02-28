#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
Blink='\e[5m'
yell='\e[33m'
lgreen='\e[92m'
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
echo "Checking VPS"
MYIP=$(wget -qO- ipinfo.io/ip);
clear
if [ -f "/etc/v2ray/domain" ]; then
echo "Script Already Installed"
exit 0
fi
clear
echo ""
echo -e "\e[92m              ██╗  ██╗██╗  ██╗███████╗ ███████╗        "
echo -e "\e[92m              ██║  ██║██║  ██║╚══███╔╝ ╚══███╔╝        "
echo -e "\e[92m              ███████║███████║  ███╔╝    ███╔╝         "
echo -e "\e[92m              ██╔══██║╚════██║ ███╔╝    ███╔╝          "
echo -e "\e[92m              ██║  ██║     ██║███████╗ ███████╗        "
echo -e "\e[92m              ╚═╝  ╚═╝     ╚═╝╚══════╝ ╚══════╝        "
echo ''
echo ''
echo -e "$green                  Proses akan mula dalam 5 Saat!              $NC"
echo -e "$green   ...........................................................$NC"
sleep 5
clear
echo -e "$green   =============================================$NC"
echo -e "$green    Sila Masukkan DOMAIN, Jika TIADA KLIK Enter $NC"
echo -e "$green   =============================================$NC"
mkdir /etc/v2ray
mkdir /var/lib/premium-script;
read -p " Hostname / Domain: " host
echo "IP=$host" >> /var/lib/premium-script/ipvps.conf
echo "$host" >> /root/domain
echo "$host" >> /etc/v2ray/domain
echo "V2.0" >> /home/version
clear
echo -e "$green   =============================================$NC"
echo -e "$green               Sila Tunggu sebentar             $NC"
echo -e "$green    Process Update & Upgrade Sedang Dijalankan  $NC"
echo -e "$green   =============================================$NC"
secs_to_human() {
    echo "Installation time : $(( ${1} / 3600 )) hours $(( (${1} / 60) % 60 )) minute's $(( ${1} % 60 )) seconds"
}
start=$(date +%s)
sleep 2
apt-get update && apt-get upgrade -y && update-grub -y
apt-get netstat -y
apt-get ifconfig -y
apt install lolcat -y
gem install lolcat
clear
echo -e "$green   =============================================$NC"
echo -e "$green          Process Update&Upgrade Selesai        $NC"
echo -e "$green   =============================================$NC"
sleep 2
clear
echo -e "$green   =============================================$NC"
echo -e "$green         Installing AutoScript  By Joysmark V2     $NC"
echo -e "$green   =============================================$NC"
sleep 2
#install ssh ovpn
echo -e "$green   =============================================$NC"
echo -e "$green                 Install SSH OVPN               $NC"
echo -e "$green   =============================================$NC"
sleep 2
wget https://raw.githubusercontent.com/joypanel/vps/main/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn ./ssh-vpn.sh
#install ssr
echo -e "$green   =============================================$NC"
echo -e "$green                     Install SSR                $NC"
echo -e "$green   =============================================$NC"
sleep 2
wget https://raw.githubusercontent.com/joypanel/vps/main/ssr.sh && chmod +x ssr.sh && screen -S ssr ./ssr.sh
wget https://raw.githubusercontent.com/joypanel/vps/main/sodosok.sh && chmod +x sodosok.sh && screen -S ss ./sodosok.sh
#install wireguard
echo -e "$green   =============================================$NC"
echo -e "$green                 Install Wireguard              $NC"
echo -e "$green   =============================================$NC"
sleep 2
wget https://raw.githubusercontent.com/joypanel/vps/main/wg.sh && chmod +x wg.sh && screen -S wg ./wg.sh
#install v2ray
echo -e "$green   =============================================$NC"
echo -e "$green                 Install TROJAN GFW             $NC"
echo -e "$green   =============================================$NC"
sleep 2
wget https://raw.githubusercontent.com/joypanel/vps/main/ins-vt.sh && chmod +x ins-vt.sh && screen -S v2ray ./ins-vt.sh
#Instal Xray
echo -e "$green   =============================================$NC"
echo -e "$green                      Install XRAY              $NC"
echo -e "$green   =============================================$NC"
sleep 2
wget https://raw.githubusercontent.com/joypanel/vps/main/xray-go.sh && chmod +x xray-go.sh && screen -S xray-go ./xray-go.sh
wget https://raw.githubusercontent.com/joypanel/vps/main/install-xtls.sh && chmod +x install-xtls.sh && screen -S install-xtls ./install-xtls.sh
#set backup
echo -e "$green   =============================================$NC"
echo -e "$green                      SET BACKUP                $NC"
echo -e "$green   =============================================$NC"
sleep 2
wget https://raw.githubusercontent.com/joypanel/vps/main/set-br.sh && chmod +x set-br.sh && ./set-br.sh
# install OHP
echo -e "$green   =============================================$NC"
echo -e "$green                 Install OHP                   $NC"
echo -e "$green   =============================================$NC"
sleep 2
wget https://raw.githubusercontent.com/joypanel/vps/main/ohp.sh && chmod +x ohp.sh && screen -S ohp ./ohp.sh

rm -f /root/ssh-vpn.sh
rm -f /root/ss.sh
rm -f /root/ssr.sh
rm -f /root/wg.sh
rm -f /root/ins-vt.sh
rm -f /root/set-br.sh
rm -f /root/xray-go.sh
rm -f /root/install-xtls.sh
rm -f /root/ohp.sh

cat <<EOF> /etc/systemd/system/autosett.service
[Unit]
Description=autosetting
Documentation=joysmark.me

[Service]
Type=oneshot
ExecStart=/bin/bash /etc/set.sh
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl enable autosett
wget -O /etc/set.sh "https://raw.githubusercontent.com/joypanel/vps/main/set.sh"
chmod +x /etc/set.sh
history -c
clear
running
sleep 5
echo " "
echo -e "$green   =============================================$NC"
echo -e "$green         Installation has been completed!!      $NC"
echo -e "$green   =============================================$NC"
sleep 2
echo " "
echo "==============================-{ Autoscript Premium }-==========================" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "--------------------------------------------------------------------------------" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - OpenSSH                 : 22"  | tee -a log-install.txt
echo "   - OpenVPN                 : TCP 1194, UDP 2200"  | tee -a log-install.txt
echo "   - OHP                     : 8087"  | tee -a log-install.txt
echo "   - Stunnel4                : 888, 777"  | tee -a log-install.txt
echo "   - Dropbear                : 109, 143"  | tee -a log-install.txt
echo "   - Squid Proxy             : 3128, 8080 (limit to IP Server)"  | tee -a log-install.txt
echo "   - Badvpn                  : 7300"  | tee -a log-install.txt
echo "   - Nginx                   : 81"  | tee -a log-install.txt
echo "   - Wireguard               : 7070"  | tee -a log-install.txt
echo "   - Shadowsocks-R           : 1443-1543"  | tee -a log-install.txt
echo "   - SS-OBFS TLS             : 2443-2543"  | tee -a log-install.txt
echo "   - SS-OBFS HTTP            : 3443-3543"  | tee -a log-install.txt
echo "   - Xray Vmess TLS          : 8000"  | tee -a log-install.txt
echo "   - Xray Vmess None TLS     : 8800"  | tee -a log-install.txt
echo "   - Xray Vless TLS          : 543"  | tee -a log-install.txt
echo "   - Xray Vless None TLS     : 643"  | tee -a log-install.txt
echo "   - XRAY DIRECT             : 443"  | tee -a log-install.txt
echo "   - XRAY SPLICE             : 443"  | tee -a log-install.txt
echo "   - Trojan-GFW              : 2087"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                 : Asia/Kuala_Lumpur (GMT +8)"  | tee -a log-install.txt
echo "   - Fail2Ban                 : [ON]"  | tee -a log-install.txt
echo "   - Dflate                   : [ON]"  | tee -a log-install.txt
echo "   - IPtables                 : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot              : [ON]"  | tee -a log-install.txt
echo "   - IPv6                     : [OFF]"  | tee -a log-install.txt
echo "   - Auto-Reboot              : [ON]" | tee -a log-install.txt
echo "   - Auto-Remove-Expired      : [ON]" | tee -a log-install.txt
echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[ Script by Harithwyd ]━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a log-install.txt
echo ""
secs_to_human "$(($(date +%s) - ${start}))" | tee -a log-install.txt
echo ""
sleep 3
echo -e "$green   =============================================$NC"
echo -e "$green          SISTEM AKAN REBOOT SEBENTAR LAGI       $NC"
echo -e "$green   =============================================$NC"
echo -e ""
echo -e "[ ${yell}INFO${NC} ] Kalau SSR & Shadowsocks tu tunjuk error, dia mmg mcm tu. Tpi ok je kalau cek lps login VPS"
rm -f /root/setup.sh
rm -f /root/.bash_history
echo " Reboot in 15 Sec, Setelah ON type menu"
sleep 15
reboot
