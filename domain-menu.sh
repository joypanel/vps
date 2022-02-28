#!/bin/bash
DF='\e[39m'
Bold='\e[1m'
Blink='\e[5m'
yell='\e[33m'
red='\e[1;31m'
green='\e[1;32m'
blue='\e[1;34m'
PURPLE='\e[35m'
CYAN='\e[1;36m'
Lred='\e[1;91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
white='\e[1;37m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.co);
echo "Checking VPS"
#EDIT IZIN
clear
echo -e  " $Lyellow ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ $NC"
echo -e  "   | $white                   Domain Menu                 |"
echo -e  " $Lyellow ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ $NC"
echo -e "   $green 1)$NC $yell Add Subdomain Host For VPS$NC"
echo -e "   $green 2)$NC $yell Add ID Cloudflare$NC"
echo -e "   $green 3)$NC $yell Cloudflare Add-Ons$NC"
echo -e "   $green 4)$NC $yell Pointing BUG$NC"
echo -e "   $green 5)$NC $yell Renew Certificate XRAY$NC"
echo -e "   $green 6)$NC $red BACK TO MENU$NC"
echo -e ""
read -p "     Please Input Number  [1-6 or x] :  "  opt
echo -e ""
case $opt in
1) clear ; add-host ;;
2) clear ; cff ;;
3) clear ; cfd ;;
4) clear ; cfh ;;
5) clear ; certv2ray ;;
6) clear ; menu ;;
x) exit ;;
*) echo "Please enter an correct number" ;;
esac
