#!/bin/bash
echo
cat << "EOF"
   (  )   /\   _                 (
    \ |  (  \ ( \.(               )                      _____
  \  \ \  `  `   ) \             (  ___                 / _   \
 (_`    \+   . x  ( .\            \/   \____-----------/ (o)   \_
- .-               \+  ;          (  O                           \____
(__                +- .( -'.- <.   \_____________  `              \  /
(_____            ._._: <_ - <- _- _  VVVVVVV VV V\                \/
  .    /./.+-  . .- /  +--  - .    (--_AAAAAAA__A_/                |
  (__ ' /x  / x _/ (                \______________//_              \_______
 , x / ( '  . / .  /                                  \___'          \     /
    /  /  _/ /    +                                       |           \   /
   '  (__/                                               /              \/
                                                       /                  \
             NMAP IS A POWERFUL TOOL -- USE CAREFULLY AND RESPONSIBLY
 _   _                       
| \ | |_ __ ___   __ _ _ __  
|  \| | '_ ` _ \ / _` | '_ \ 
| |\  | | | | | | (_| | |_) |
|_| \_|_| |_| |_|\__,_| .__/ 
                      |_|      
EOF
echo
echo -e "\e[1;31mPlease enter Target Ip:\e[0m"
read ip

echo "[*]-1 Brute forcing SMTP passwords"
echo "[*]-2 Xmas Scan" 
echo "[*]-3 Nmap Null Scan" 
echo "[*]-4 Nmap" 
echo "[*]-5 Back" 
echo
echo " - - - - "$ip" - - - -"
echo -e "\e[1;36m1. Choice.\e[0m"
read choice

echo $choice

case $choice in
     1) nmap -p25 -Pn –script smtp-brute $ip ;;
     2) nmap -sX -v $ip ;;
     3) nmap -sN -V $ip ;;
     4) ./main.sh ;;
     5) ./main.sh ;;
     *) echo; echo "Invalid choice."; echo
esac
