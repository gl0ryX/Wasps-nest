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

while :
do
echo
echo -e "\e[1;32m1. Create Pattren  .\e[0m"
echo -e "\e[1;32m2. Offset .\e[0m"
echo -e "\e[1;32m3. Bad characters .\e[0m"
echo -e "\e[1;32m4. Windows Payloads .\e[0m"
echo -e "\e[1;32m5. main.\e[0m"
echo -e "\e[1;32m6. Exit.\e[0m"
echo


echo -e "\e[1;36m1. Choice.\e[0m"
read -n3
case "$REPLY" in
     1) /usr/share/wasp/pattrn.sh ;;
     2) /usr/share/wasp/offset.sh ;;
     3) python /usr/share/wasp/bad.py ;;
     4) /usr/share/wasp/messagebox.sh ;;
     5) wasp ;;
     6) exit ;;
     *) echo; echo "Invalid choice."; echo
esac
sleep 1
done
