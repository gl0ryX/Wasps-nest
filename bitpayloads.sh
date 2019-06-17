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

echo
while :
do
echo -e "\e[1;32m1. x86.\e[0m"
echo -e "\e[1;32m2. x64.\e[0m"
echo -e "\e[1;32m3. Back.\e[0m"
echo -e "\e[1;32m4. Exit.\e[0m"
echo
echo -e "\e[1;36m1. Choice.\e[0m"
read -n1 -s

echo $choice

case "$REPLY" in
     1) /usr/share/wasp/px86.sh ;;
     2) /usr/share/wasp/px64.sh ;;
     3) /usr/share/wasp/payloads.sh ;;
     4) exit ;;
     *) echo; echo "Invalid choice."; echo
esac
sleep 1

done
