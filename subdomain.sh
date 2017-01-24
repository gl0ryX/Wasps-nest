#!/bin/bash
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

echo -e "\e[1;32m:::::::Find Subdomains:::::::.\e[0m"
#echo -e "\e[1;32mPlease enter Target Ip:\e[0m"

read -p "Please enter Target Ip:" ip

if [ -z $ip ]; then
     echo "error"

     exit
fi

echo

wget -q www.$ip

if [ ! -e index.html ]; then
     echo
     exit
fi

grep 'href=' index.html | cut -d '/' -f3 | grep $ip | cut -d '"' -f1 > tmp

for x in $(cat tmp); do
     host $x | grep 'has address' | cut -d ' ' -f1,4 >> tmp2
done

if [ -e tmp2 ]; then
     cat tmp2 | grep $ip | column -t | sort -u 
     cat tmp2 | grep $ip | column -t | sort -u > report/$ip.$(date +%Y-%m-%d_%H:%M)
fi

rm index.html tmp*

echo -e "\e[1;32mSaved in :.\e[0m" report/$ip.$(date +%Y-%m-%d_%H:%M) 
echo
./header.sh 
