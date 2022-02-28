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
clear
echo -e ""
echo -e ""
echo -e " $Lyellow ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ $NC"
echo -e  " $white            • SS & SSR MENU •         "
echo -e " $Lyellow ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e " $green *[1]$NC $PURPLE Create SSR Account$NC"
echo -e " $green *[2]$NC $PURPLE Create Shadowsocks Account$NC"
echo -e " $green *[3]$NC $PURPLE Deleting SSR Account$NC"
echo -e " $green *[4]$NC $PURPLE Delete Shadowsocks Account$NC"
echo -e " $green *[5]$NC $PURPLE Renew SSR Account Active$NC"
echo -e " $green *[6]$NC $PURPLE Renew Shadowsocks Account$NC"
echo -e " $green *[7]$NC $PURPLE Check User Login Shadowsocks$NC"
echo -e " $green *[8]$NC $PURPLE Show Other SSR Menu$NC"
echo -e " $green *[9]$NC $red BACK TO MENU$NC"
echo -e ""
echo -e "$Lyellow  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ $NC"
echo -e ""
read -p "     Select From Options [1-9 or x] :  " opt
echo -e   ""
case $opt in
1) clear ; add-ssr ;;
2) clear ; add-ss ;;
3) clear ; del-ssr ;;
4) clear ; del-ss ;;
5) clear ; renew-ssr ;;
6) clear ; renew-ss ;;
7) clear ; cek-ss ;;
8) clear ; ssrmu ;;
9) clear ; menu ;;
X) clear ; exit ;;
*) echo "Please enter an correct number" ; sleep 1 ; m-ssr ;;
esac
