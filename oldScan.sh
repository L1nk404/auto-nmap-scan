#!/bin/bash

########################################################################

ASCIIART="
                                             :!JPGBGY7^.                                            
                                         .7G&@@@@@@@@@@@&5^                                         
                                       ^G@@@@BJ~:.?B?!5&@@@&J.                                      
                                     ^#@@@B!.     .P&G: .J&@@@Y.                                    
                                   .P@@@G:        ...Y@#~  7&@@@!                                   
                                  ~&@@&~          7@B:.J&&!  Y@@@G.                                 
                                 J@@@P.            .Y@#^.7&&7 :&@@&:                                
                                P@@@?             7G:.J&#~ !&&?:G@@@~                               
                               B@@@~              .5@#^.7&&7 ~#&5B@@@7                              
                             .#@@@^               ...J&#~ !&&?.^B@@@@@7                             
                             B@@@:                7&B^.?&&! ~#@J.:P@@@@7                            
                            B@@@:          ........^G@#^.?&&7.^B&Y..P@@@!                           
                           P@@@^ .^!?5GB#&&&@@@@@@@@@@@@@&&@@&5JP@@5:P@@@^                          
                          Y@@@&#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#@@@@:                         
                         7@@@@@@@@@@@@GJJJJJJJJJJJJJJJJJJJJJJY#@@@@@@@@@@@&.                        
                        ^@@@@@@@@@@@@@.           ^.          5@@@@@@@@@@@@B                        
                        7@@@@@@@@@@@@@G           J&.        :@@@@@@@@@@@@@@.                       
                         5@@@@@@@@@@@@@!          ~@5        B@@@@@@@@@@@@&^                        
                          ^#@@@@@@@@@@@@:           .       Y@@@@@@@@@@@@Y.                         
                            ^B@@@@@@@@@@&.                 ?@@@@@@@@@@@J.                           
                           .~G@@@@@@@@@@@@Y:            .!B@@@@@@@@@@@&J:                           
                        .!G@@@@@@@@@@@@@@@@@&GJ!^:.:~75#@@@@@@@@@@@@@@@@@&Y^                        
                     .7B@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&5^                     
                   :G@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&J.                  
                  J@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&:                 
                 J@@@@@@BJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJY@@@@@@@.                
                !@@@@@@@^                                                   G@@@@@@&.               
               ^@@@@@@@@~                      ..:::.                       B@@@@@@@G               
              .&@@@@@@@@!                  .7G&@@@@@@&G7.                   #@@@@@@@@Y              
              #@@@@@@@@@?                .Y@@@@@@@@@@@@@@5.                 &@@@@@@@@@7             
             P@@@@@@@@@@Y               .&@@@@@@@@@@@@@@@@&.               .&@@@@@@@@@@^            
            J@@@@@@@@@@@5               G@@@@@@@@@@@@@@@@@@B               .@@@@@@@@@@@@.           
           ^@@@@@@@@@@@@G               &@@GB&&@@@@@@@&BG@@@.              .@@@@@@@@@@@@B           
           G@@@@@@@@@@@@B               B@@.    !@@7    .@@#               :@@@@@@@@@@@@@^          
           #@@@@@@@@@@@@#               .&@&J!!Y@@@@5!!J&@&:               ^@@@@@@@@@@@@@!          
           J@@@@@@@@@@@@&                :@@@@@@?P&~@@@@@@^                ~@@@@@@@@@@@@@.          
            G@@@@@@@@@@@&                !@@@@@@Y&@Y&@@@@@7                !@@@@@@@@@@@@!           
             Y@@@@@@@@@@@.                ^~^G@@@@@@@@B^~^                 ?@@@@@@@@@@&^            
              :G@@@@@@@@@.                   ~&&&&&&&&!                    Y@@@@@@@@&J              
   .JGGGGGGGGGGG@@@@@@@@@.                                                 5@@@@@@@@#PGGGGGGGGGY.   
   .&@@@@@@@@@@@@@@@@@@@@!:::::::::::::::::::::::::::::::::::::::::::::::::B@@@@@@@@@@@@@@@@@@@&:   
     ...............7&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@G:..............     
                     ^@@@G?JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ&@@#                     
                     :@@@B5555555555555555555555555555555555555555555555555@@@B                     
                     .#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@?                     
                       .......................................................       


                    __   _ _______ _______  _____       _______ _______ _______ __   _
                    | \  | |  |  | |_____| |_____]      |______ |       |_____| | \  |
                    |  \_| |  |  | |     | |            ______| |_____  |     | |  \_|


                                                                                            
"

#######################################################################################################

BANNER () {
    echo -e "\e[92m$ASCIIART\e[0m"

    echo -e "\e[1m\e[31m################### DONT FORGET TO RUN IN ROOT #############################\e[0m\e[0m"
    echo
    echo
}

main_header() {

  message="\e[32m\e[1m[+] \e[0m\e[0m $1"
  echo -e -n "$message"
}

scan_type_header() {
  echo
  message="\e[32m\e[1m[>>]$1\e[0m\e[0m"
  echo -e "$message"
}


echo_done(){
  message="\e[32m\e[1m[=]Done!\e[0m\e[0m"
  echo -e "$message"
  echo 
}




#########################################################################################################
clear 

BANNER

main_header "Type target addrs: "
read -r ip_addr

main_header "Do host scan: [y/n] "
read -r host_scan

main_header "Assume alive: [y/n] "
read -r alive

main_header "Use Decoy?: [y/n] "
read -r decoy

main_header "Enter the folder for save log files: "
read -r folder


# CHANGE THE PATH!!
cd /home/link/Desktop/HackLogs/TryHackMe/"$folder" || echo -e "\e[1m\e[31Path not found, try again.\e[0m\e[0m" | exit



# PRIVATES IPS! CHANGE IT FOR YOUR PREFENCE

# my_ip='10.2.65'
# decoy_ips="-D $my_ip.192 $my_ip.87 $my_ip.183 $my_ip.213 $my_ip.84 $my_ip.182 $my_ip.23 $my_ip.145"

decoy_ips="-D RND:5"

mkdir -p nmap
cd nmap || exit


if [ "$decoy" = "y" ];then

  if [ "$host_scan" == "y" ];then  
    scan_type_header "Host Scan: "
    nmap "$decoy_ips" -sS -sU "$ip_addr"  -oN host.txt
    echo_done
  fi

  if [ "$alive" == "y" ];then
    scan_type_header "Default scan: "
    nmap "$decoy_ips" -sC -sV -Pn  "$ip_addr" -oN default.txt
    echo_done

    scan_type_header "Os scan: "
    nmap "$decoy_ips" -O -Pn "$ip_addr" -oN os.txt
    echo_done

    scan_type_header "Vuln scan: "
    nmap "$decoy_ips" --script vuln -Pn "$ip_addr" -oN vuln.txt
    echo_done

    scan_type_header "Auth scan: "
    nmap "$decoy_ips" --script auth -Pn "$ip_addr" -oN auth.txt
    echo_done
    

  else
    scan_type_header "Default scan: "
    nmap "$decoy_ips" -sC -sV "$ip_addr" -oN default.txt
    echo_done
    
    scan_type_header "Os scan: "
    nmap "$decoy_ips" -O -Pn --system-dns "$ip_addr" -oN os.txt
    echo_done

    scan_type_header "Vuln scan: "
    nmap "$decoy_ips" --script vuln "$ip_addr" -oN vuln.txt
    echo_done

    scan_type_header "Auth scan: "
    nmap "$decoy_ips" --script auth "$ip_addr" -oN auth.txt
    echo_done
  fi

else

  if [ "$host_scan" == "y" ];then  
    scan_type_header "Host Scan: "
    nmap -sS -sU "$ip_addr" -oN /nmap/hosts.txt
    echo_done
  fi

  if [ "$alive" == "y" ];then
    scan_type_header "Default scan: "
    nmap -sC -sV -Pn "$ip_addr" -oN default.txt
    echo_done

    scan_type_header "Os scan: "
    nmap -O -Pn "$ip_addr" -oN os.txt
    echo_done

    scan_type_header "Vuln scan: "
    nmap --script vuln -Pn "$ip_addr" -oN vuln.txt
    echo_done

    scan_type_header "Auth scan: "
    nmap --script auth -Pn "$ip_addr" -oN auth.txt
    echo_done

    

  else
    scan_type_header "Default scan: "
    nmap -sC -sV "$ip_addr" -oN default.txt
    echo_done
    
    scan_type_header "Os scan: "
    nmap -O -Pn "$ip_addr" -oN os.txt
    echo_done

    scan_type_header "Vuln scan: "
    nmap --script vuln "$ip_addr" -oN vuln.txt
    echo_done

    scan_type_header "Auth scan: "
    nmap --script auth= "$ip_addr" -oN auth.txt
    echo_done
  fi

fi