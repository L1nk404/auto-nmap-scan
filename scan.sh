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

BANNER () 
{
    echo -e "\e[92m$ASCIIART\e[0m"
    echo -e "\e[1m\e[31m################### DONT FORGET TO RUN IN ROOT #############################\e[0m\e[0m"
    echo
    echo
}

main_header()
{
    message="\e[1m\e[38;5;21m$1\e[0m\e[0m"
    echo -e "$message"
}

scan_type_header()
{
    echo
    message="\e[32m\e[1m[>>]$1\e[0m\e[0m"
    echo -e "$message"
}

echo_done()
{
    "\e[32m\e[1m[=]Done!\e[0m\e[0m"
    echo -e "$message"
    echo 
}

################ VARIABLES FOR CONFIG #################################################

decoy_ips="-D5" # Change this option with you want

target_addr=" "
host_scan="False"
assume_alive="True"
timing="3" # Default Timing
decoy="True" 
path=" "  # You can set a default patch if you want

#######################################################################################

display_menu()
{   
    echo -e "[1] Target addrs: \e[38;5;45m$target_addr\e[0m"
    echo -e "[2] Do host scan: \e[38;5;45m$host_scan\e[0m"
    echo -e "[3] Assume alive: \e[38;5;45m$assume_alive\e[0m"
    echo -e "[4] Decoy: \e[38;5;45m$decoy\e[0m"
    echo -e "[5] Enter the timing: \e[38;5;45m$timing\e[0m"
    echo -e "[6] Folder path for log files: \e[38;5;45m$path\e[0m"
    echo -e "[0] Start Scan: "
    
}


scan()
{
    if [[ "$decoy" == "True" ]] || [[ "$decoy" == "true" ]];then

        if [[ "$host_scan" == "True" ]] || [[ "$host_scan" == "true" ]];then  
            scan_type_header "Host Scan: "
            nmap "$decoy_ips" -sS -sU "$target_addr" "$timing" -oN host.txt
            echo_done
        fi

        if [[ "$assume_alive" == "True" ]] || [[ "$assume_alive" == "true" ]];then  
                scan_type_header "Default scan: "
                nmap "$decoy_ips" -sC -sV -Pn  "$target_addr" "$timing" -oN default.txt
                echo_done

                scan_type_header "Os scan: "
                nmap "$decoy_ips" -O -Pn "$target_addr" "$timing" -oN os.txt
                echo_done

                scan_type_header "Vuln scan: "
                nmap "$decoy_ips" --script vuln -Pn "$target_addr" "$timing" -oN vuln.txt
                echo_done

                scan_type_header "Auth scan: "
                nmap "$decoy_ips" --script auth -Pn "$target_addr" "$timing" -oN auth.txt
                echo_done
        else # Not assume alive
                scan_type_header "Default scan: "
                nmap "$decoy_ips" -sC -sV "$target_addr" "$timing" -oN default.txt
                echo_done

                scan_type_header "Os scan: "
                nmap "$decoy_ips" -O "$target_addr" "$timing" -oN os.txt
                echo_done

                scan_type_header "Vuln scan: "
                nmap "$decoy_ips" --script vuln "$target_addr" "$timing" -oN vuln.txt
                echo_done

                scan_type_header "Auth scan: "
                nmap "$decoy_ips" --script auth "$target_addr" "$timing" -oN auth.txt
                echo_done
        fi

    else # Not decoy

        if [[ "$host_scan" == "True" ]] || [[ "$host_scan" == "true" ]];then  
            scan_type_header "Host Scan: "
            nmap -sS -sU "$target_addr" "$timing" -oN host.txt
            echo_done
        fi

        if [[ "$assume_alive" == "True" ]] || [[ "$assume_alive" == "true" ]];then  
                scan_type_header "Default scan: "
                nmap -sC -sV -Pn  "$target_addr" "$timing" -oN default.txt
                echo_done

                scan_type_header "Os scan: "
                nmap -O -Pn "$target_addr" "$timing" -oN os.txt
                echo_done

                scan_type_header "Vuln scan: "
                nmap --script vuln -Pn "$target_addr" "$timing" -oN vuln.txt
                echo_done

                scan_type_header "Auth scan: "
                nmap --script auth -Pn "$target_addr" "$timing" -oN auth.txt
                echo_done
        else
                scan_type_header "Default scan: "
                nmap -sC -sV "$target_addr" "$timing" -oN default.txt
                echo_done

                scan_type_header "Os scan: "
                nmap -O "$target_addr" "$timing" -oN os.txt
                echo_done

                scan_type_header "Vuln scan: "
                nmap --script vuln "$target_addr" "$timing" -oN vuln.txt
                echo_done

                scan_type_header "Auth scan: "
                nmap --script auth "$target_addr" "$timing" -oN auth.txt
                echo_done
        fi

    fi
}

#########################################################################################################


# Main menu loop
while true; do
    clear
    BANNER
    display_menu
    read -r -p "Enter the option to set or press 0 to run: " choice
    echo ""
    case $choice in 
        1)
            read -r -p "Set target address: " target_addr
            ;;
        2)  
            read -r -p "Set True or False: " host_scan
            ;;
        3)  
            read -r -p "Set True or False: " assume_alive
            ;;
        4)  
            read -r -p "Set True or False: " assume_alive
            ;;
        5)
            read -r -p "Set the timing: paranoid (0), sneaky (1), polite (2), normal (3), aggressive (4), and insane (5): " timing
            ;;
        6)
            read -r -p "Enter the folder path for save the log files: "  path
            ;;
        0)
            main_header "Scanning..."
            scan
            break
            ;;         
    esac
done




