#!/bin/bash
# Wasp 
# 
# 
#
#
echo
cat << "EOF"

__      ____ _ ___ _ __  
\ \ /\ / / _` / __| '_ \ 
 \ V  V / (_| \__ \ |_) |
  \_/\_/ \__,_|___/ .__/ 
                  | |    
                  |_| 
EOF
echo

echo -e "\e[1;92m:::::::ScanFu:::::::.\e[0m"
echo -e "\e[1;32mPlease enter Target Ip:\e[0m"
read ip

echo
echo -e "\e[1;32m[1]. nikto.\e[0m"
echo -e "\e[1;32m[2]. Wordpress Scan.\e[0m"
echo -e "\e[1;32m[3]. Joomla Scan.\e[0m"
echo -e "\e[1;32m[4]. Fuzzing Files[wfuzz].\e[0m"
echo -e "\e[1;32m[5]. Back.\e[0m"
echo
echo " - - - - "$ip" - - - -"s
echo -e "\e[1;36m1. Choice.\e[0m"
read choice

echo $choice

case $choice in
     1) nikto -h $ip  ;;
     2) wpscan --url $ip  ;;
     3) joomscan -u $ip  ;;
     4) wfuzz --hc 404 -w /usr/share/seclists/Discovery/Web_Content/big.txt $ip/FUZZ ;;
     5) wasp ;;
     *) echo; echo "Invalid choice."; echo
esac
