
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
while :
do
echo "[*]-1 Brute forcing SMTP passwords"
echo "[*]-2 Xmas Scan" 
echo "[*]-3 Nmap Null Scan" 
echo "[*]-4 Nmap scan all port" 
echo "[*]-5 Nmap scan port open" 
echo "[*]-6 Back" 
echo "[*]-7 exit" 
echo
echo " - - - - "$ip" - - - -"
echo -e "\e[1;36m1. Choice.\e[0m"
read -n1 -s

echo $choice

case "$REPLY" in
     1) nmap -p25 -Pn –script smtp-brute $ip ;;
     2) nmap -sX -v $ip ;;
     3) nmap -sN -V $ip ;;
     4) nmap -A -p- $ip ;;
     5) nmap -A -p- -Pn --open -T4 $ip ;;
     6) wasp ;;
     7) exit ;;
     *) echo; echo "Invalid choice."; echo
esac
sleep 1

done
