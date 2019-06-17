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

echo -e "\e[1;31moffset Address:\e[0m"
read offset
/usr/share/metasploit-framework/tools/exploit/pattern_offset.rb -q $offset
exit
