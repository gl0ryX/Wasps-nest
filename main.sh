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
echo -e "\e[1;31m:::::::Wasp Tool v.2 2019:::::::.\e[0m"
mkdir -p /usr/share/wasp/report
echo
while :
do
echo -e "\e[1;32m1. Information Gathering.\e[0m"
echo -e "\e[1;32m2. Nmap ninja c0mmands.\e[0m"
echo -e "\e[1;32m3. ScanFu.\e[0m"
echo -e "\e[1;32m4. Database Assessment .\e[0m"
echo -e "\e[1;32m5. LFI Attack.\e[0m"
echo -e "\e[1;32m6. Metasploit Payloads.\e[0m"
echo -e "\e[1;32m7. BOF tools.\e[0m"
echo -e "\e[1;32m8. Exit.\e[0m"
echo
echo -e "\e[1;36m1. Choice.\e[0m"
read -n1 -s

echo $choice

case "$REPLY" in
     1) /usr/share/wasp/infogathering.sh ;;
     2) /usr/share/wasp/nmapninja.sh ;;
     3) /usr/share/wasp/scanfu.sh ;;
     4) /usr/share/wasp/dbassessmnt.sh ;;
     5) /usr/share/wasp/curlwsp.sh ;;
     6) /usr/share/wasp/payloads.sh ;;
     7) /usr/share/wasp/buff.sh ;;
     8) exit ;;
     *) echo; echo "Invalid choice."; echo
esac
sleep 1

done
