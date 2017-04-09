#!/bin/bash
echo
echo
echo -e "\e[1;31m:::::::Wasps Nest Tool v.0 2017:::::::.\e[0m"
echo
echo -e "\e[1;32m1. Ping Sweep "
echo -e "\e[1;32m2. Back"
echo -e "\e[1;32m3. main"
echo -e "\e[1;32m4. Exit.\e[0m"
echo
echo -e "\e[1;36m1. Choice.\e[0m"
read choice

echo $choice

case $choice in
     1) /usr/share/wasp/pings.sh ;;
     2) /usr/share/wasp/infogathering.sh ;;
     3) wasp ;;
     4) exit ;;
     *) echo; echo "Invalid choice."; echo
esac
