#!/bin/bash
clear
echo
cat << "EOF"
                 _  _
                | )/ )
             \\ |//,' __
             (")(_)-"()))=-
                (\\
                             _   _
  HEELP                     ( | / )
                          \\ \|/,' __
    \_o_/                 (")(_)-"()))=-
       )                     <\\
      /\__
_____ \ ________________________________
__      ____ _ ___ _ __  
\ \ /\ / / _` / __| '_ \ 
 \ V  V / (_| \__ \ |_) |
  \_/\_/ \__,_|___/ .__/ 
                  | |    
                  |_|    
EOF
echo
echo -e "\e[1;31m:::::::Wasps Nest Tool v.0 2017:::::::.\e[0m"
echo "                                              c0ded by sup3r."
mkdir -p report
echo
echo -e "\e[1;32m1. Information Gathering.\e[0m"
echo -e "\e[1;32m2. Nmap ninja c0mmands.\e[0m"
echo -e "\e[1;32m3. ScanFu.\e[0m"
echo -e "\e[1;32m4. Brute Force.\e[0m"
echo -e "\e[1;32m5. Exit.\e[0m"
echo
echo -e "\e[1;36m1. Choice.\e[0m"
read choice

echo $choice

case $choice in
     1) ./infogathering.sh ;;
     2) ./nmapninja.sh ;;
     3) ./scanfu.sh ;;
     4) ./robots.sh ;;
     5) exit ;;
     *) echo; echo "Invalid choice."; echo
esac
