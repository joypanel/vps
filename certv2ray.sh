RED='\e[1;31m'
GREEN='\e[0;32m'
BLUE='\e[0;34m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.co);
echo "Checking VPS"
#Update Certificate SSL
echo "Automatical Update Your Certificate SSL"
sleep 2
echo Starting Update SSL Certificate
sleep 0.5
source /var/lib/premium-script/ipvps.conf
domain=$IP
systemctl stop xray
systemctl stop xray.service
systemctl stop trojan
systemctl stop trojan.service
/root/.acme.sh/acme.sh --issue -d $domain --standalone -k ec-256
~/.acme.sh/acme.sh --installcert -d $domain --fullchainpath /etc/v2ray/v2ray.crt --keypath /etc/v2ray/v2ray.key --ecc
systemctl daemon-reload
systemctl restart trojan
systemctl restart trojan.service
systemctl restart xray
systemctl restart xray.service

#Done
echo -e "[${GREEN}Done${NC}]"
echo "Location Your Domain : /var/lib/premium-script/ipvps.conf"
echo ""
