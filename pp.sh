
#!/bin/bash
echo
cat << "EOF"
    
EOF
echo
while :
do
echo -e "\e[1;32m1. x86.\e[0m"
echo -e "\e[1;32m2. x64.\e[0m"
echo -e "\e[1;32m3. Back.\e[0m"
echo -e "\e[1;32m4. Exit.\e[0m"
echo
echo " - - - - "$ip" - - - -"
echo -e "\e[1;36m1. Choice.\e[0m"
read -n1 -s

echo $choice

case "$REPLY" in
     1) /usr/share/wasp/x86reverse.sh ;;
     2) /usr/share/wasp/x64reverse.sh ;;
     3) /usr/share/wasp/payloads.sh ;;
     4) exit ;;
     *) echo; echo "Invalid choice."; echo
esac
sleep 1

done
