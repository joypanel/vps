#!/bin/bash
DF='\e[39m'
Bold='\e[1m'
Blink='\e[5m'
yell='\e[33m'
red='\e[1;31m'
green='\e[1;32m'
blue='\e[1;34m'
PURPLE='\e[1;95m'
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
echo -e ""
echo -e ""
echo -e " $Lyellow ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ $NC"
echo -e  " $white             XRAY VMESS MENU            "
echo -e " $Lyellow ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ $NC"
echo -e " $green *[1]$NC $PURPLE Create XRAY Vmess Websocket Account $NC"
echo -e " $green *[2]$NC $PURPLE Delete XRAY Vmess Websocket Account $NC"
echo -e " $green *[3]$NC $PURPLE Renew XRAY Vmess Account $NC"
echo -e " $green *[4]$NC $PURPLE Check XRAY User Login Vmess $NC"
echo -e " $green *[5]$NC $red BACK TO MENU $NC"
echo -e ""
echo -e " $Lyellow ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ $NC"
echo -e ""
read -p "      Select From Options [1-5 or x] :  " OPT
echo -e   ""
case $OPT in
1) clear ; add-xws ;;
2) clear ; del-xws ;;
3) clear ; renew-xws ;;
4) clear ; cek-xws ;;
5) clear ; menu ;;
x) exit ;;
*) echo "Please enter an correct number" ;;
esac
