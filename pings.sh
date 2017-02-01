#!/bin/bash
clear
echo
cat << "EOF"
            _  _
           | )/ )
        \\ |//,' __
        (")(_)-"()))=-
           (\\

__      ____ _ ___ _ __  
\ \ /\ / / _` / __| '_ \ 
 \ V  V / (_| \__ \ |_) |
  \_/\_/ \__,_|___/ .__/ 
                  | |    
                  |_|    
EOF
echo

echo -e "\e[1;32m:::::::Ping Sweep:::::::.\e[0m"
echo  "Enter Ip: Example 10.15.2"
read ip
for i in `seq 1 4`; do ping -c1 $ip.$i; done | grep "bytes from";
./headerp.sh
