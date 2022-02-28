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
BGYellow='\e[0;100;43m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.co);
echo "Checking VPS"
clear
echo -e ""
echo -e ""
echo -e ""
echo -e " $Lyellow ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$NC"
echo -e  " $white            • SSH & OVPN MENU •         "
echo -e " $Lyellow ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e ""
echo -e "   $green *[1]$NC $PURPLE Create SSH & OpenVPN Account "
echo -e "   $green *[2]$NC $PURPLE Trial Account SSH & OpenVPN "
echo -e "   $green *[3]$NC $PURPLE Renew SSH & OpenVPN Account "
echo -e "   $green *[4]$NC $PURPLE Delete SSH & OpenVPN Account "
echo -e "   $green *[5]$NC $PURPLE Check User Login SSH & OpenVPN "
echo -e "   $green *[6]$NC $PURPLE List Member SSH & OpenVPN "
echo -e "   $green *[7]$NC $PURPLE Delete User Expired SSH & OpenVPN "
echo -e "   $green *[8]$NC $PURPLE Set up Autokill SSH "
echo -e "   $green *[9]$NC $PURPLE Cek Users Who Do Multi Login SSH "
echo -e "   $green *[10]$NC $red BACK TO MENU$NC"
echo -e ""
echo -e   " $green Press x or [ Ctrl+C ] • To-Exit-Script"
echo ""
echo -e " $Lyellow ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ $NC"
echo -e ""
read -p " Please Input Number  [1-10 or x] :  "  opt
echo -e ""
case $opt in
1) clear ; usernew ; exit ;;
2) clear ; trial ; exit ;;
3) clear ; renew ; exit ;;
4) clear ; hapus ; exit ;;
5) clear ; cek ; exit ;;
6) clear ; member ; exit ;;
7) clear ; delete ; exit ;;
8) clear ; autokill ; exit ;;
9) clear ; ceklim ; exit ;;
10) clear ; menu ; exit ;;
x) exit ;;
*) echo "Please enter an correct number" ; sleep 1 ; m-sshovpn ;;
esac
