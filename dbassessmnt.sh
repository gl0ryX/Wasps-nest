#!/bin/bash
echo
cat << "EOF"

              `-.     .-'
                 \   /
  .'"'.          _\./_          .'"'.
 :   . `.      (@@\ /@@)      .'   . :
 : .     `.   :'^~^ ^~^`:   .'  .    :
  `.    .  "\.`-._'"'_.-'./" .   . .'
    `. .     `\.'.^.^.`./'     . .'
      `-._ "--:.^.^.^.^.:--" _.-'
          '--':.^.^.^.^.:'--'  
            ,/'`..^.^..'`\.    
            "   .'.-'_.`.  "  
              .'.' .'  .'`-._
             :.' .'  .' .'  .'--.._,*
             ::  :  .' .' .' .' :.'
              `: :  :  : :  :_.-'
                `:_ :  :__:-'
                   '"''' 
i will nest in database 
EOF
echo
echo -e "\e[1;92m:::::::Database Assessment :::::::.\e[0m"
echo -e "\e[1;32mPlease enter Target IP:\e[0m"
read ip
echo
echo -e "\e[1;32m[1]. sqlmap.\e[0m"
echo -e "\e[1;32m[2]. Database Dump .\e[0m"
echo -e "\e[1;32m[3]. s00n.\e[0m"
echo -e "\e[1;32m[4]. Back.\e[0m"
echo
echo -e "\e[1;31m1. $ip.\e[0m"
echo -e "\e[1;32mPlease enter Exploit page:\e[0m"
echo "Example: /index.php?p=&forymaction=search"
read page
echo -e "\e[1;31m1. $ip/$page.\e[0m"
echo -e "\e[1;32m1. Choice.\e[0m"
read choice

echo $choice
case $choice in
     1) sqlmap -u "$ip/$page" --dbs   ;;
     2) ./dbassessmnt.sh ;;
     3) theharvester -d $ip -b all -f $ip.$(date +%Y-%m-%d_%H:%M)  ;;
     4) ./main.sh ;;
     5) ./main.sh ;;
     *) echo; echo "Invalid choice."; echo
esac

