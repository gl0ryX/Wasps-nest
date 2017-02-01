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

echo -e "\e[1;32m:::::::Information Gathering:::::::.\e[0m"

echo
echo -e "\e[1;32m[1]. DMitry.\e[0m"
echo -e "\e[1;32m[2]. Bing.com Scan online.\e[0m"
echo -e "\e[1;32m[3]. The Harvester.\e[0m"
echo -e "\e[1;32m[4]. find subdomains.\e[0m"
echo -e "\e[1;32m[5]. Ping Sweep.\e[0m"
echo -e "\e[1;32m[6]. Back.\e[0m"
echo
echo -e "\e[1;31m1. $ip.\e[0m"
echo -e "\e[1;32m1. Choice.\e[0m"
read choice
echo -e "\e[1;32mPlease enter Target Ip:\e[0m"
read ip
echo $choice
case $choice in
     1) dmitry -winsepo $ip ;;
     2) firefox http://www.bing.com/search?q=ip%3A$ip&go=Submit+Query&qs=ds&form=QBLH & ;;
     3) theharvester -d $ip -b all -f report/$ip.$(date +%Y-%m-%d_%H:%M)  ;;
     4) ./subdomain.sh ;;
     5) ./pings.sh ;;
     6) ./main.sh ;;
     *) echo; echo "Invalid choice."; echo
esac
