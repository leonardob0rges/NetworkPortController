#!/bin/bash
# Network Port Controller v1.0 
# GitHub: https://github.com/leonardob0rges

printf "\e[1;36m _   _      _   ____            _      ____            _             _  \e[0m\n"
printf "\e[1;36m| \ | | ___| |_|  _ \ ___  _ __| |_   / ___|___  _ __ | |_ _ __ ___ | | \e[0m\n"
printf "\e[1;36m|  \| |/ _ \ __| |_) / _ \| '__| __| | |   / _ \| '_ \| __| '__/ _ \| | \e[0m\n"
printf "\e[1;36m| |\  |  __/ |_|  __/ (_) | |  | |_  | |__| (_) | | | | |_| | | (_) | | \e[0m\n"
printf "\e[1;36m|_| \_|\___|\__|_|   \___/|_|   \__|  \____\___/|_| |_|\__|_|  \___/|_| v1.0\e[0m\n"

echo ""
printf "    \e[1m\e[4;36mNetwork Port Controller coded by:  @leonardob0rges (GitHub)\e[0m\n"
echo "" 
printf "  \e[44m\e[1;37m The Network Port Controller is a simple shellscript\e[0m\n"
printf "  \e[44m\e[1;37m that uses Linux Firewall UFW to defines rules as   \e[0m\n"
printf "  \e[44m\e[1;37m allow or deny determined ports                     \e[0m\n"
echo ""

# USER'S CHOiCES
printf "\e[0m\e[1;36m[\e[1;37m01\e[0m\e[0m\e[1;36m]\e[0m \e[0m\e[1;33mallow PORT\e[0m     \e[0m\e[1;36m[\e[1;37m04\e[0m\e[0m\e[1;36m]\e[0m \e[0m\e[1;33menable UFW\e[0m     \e[0m\e[1;36m[\e[1;37m07\e[0m\e[0m\e[1;36m]\e[0m \e[0m\e[1;33mreset UFW\e[0m"
echo ""
printf "\e[0m\e[1;36m[\e[1;37m02\e[0m\e[0m\e[1;36m]\e[0m \e[0m\e[1;33mdeny PORT\e[0m      \e[0m\e[1;36m[\e[1;37m05\e[0m\e[0m\e[1;36m]\e[0m \e[0m\e[1;33mdisable UFW\e[0m    \e[0m\e[1;36m[\e[1;37m08\e[0m\e[0m\e[1;36m]\e[0m \e[0m\e[1;33m...\e[0m"
echo ""
printf "\e[0m\e[1;36m[\e[1;37m03\e[0m\e[0m\e[1;36m]\e[0m \e[0m\e[1;33mstatus UFW\e[0m     \e[0m\e[1;36m[\e[1;37m06\e[0m\e[0m\e[1;36m]\e[0m \e[0m\e[1;33mreload UFW\e[0m     \e[0m\e[1;36m[\e[1;37m09\e[0m\e[0m\e[1;36m]\e[0m \e[0m\e[1;33mExit\e[0m"
echo ""
echo ""
read -p $'\e[1;36m[*]\e[1m \e[1;37mChoose an option:\e[1m ' option

if [[ $option == 1 || $option == 01 ]];
then
    echo ""
    read -p $'\e[1;36mPORT:\e[1m ' port
    read -p $'\e[1;36mPROTOCOL:\e[1m ' protocol
    sudo ufw allow $port/$protocol 
elif [[ $option == 2 || $option == 02 ]];
then
    echo ""
    read -p $'\e[1;36mPORT:\e[1m ' port
    read -p $'\e[1;36mPROTOCOL:\e[1m ' protocol
    sudo ufw deny $port/$protocol  
elif [[ $option == 3 || $option == 03 ]];
then 
    echo ""
    echo $'\e[0m\e[1;36m[\e[1;37m01\e[0m\e[0m\e[1;36m]\e[0m \e[0m\e[1;33mstatus\e[0m'
    echo $'\e[0m\e[1;36m[\e[1;37m02\e[0m\e[0m\e[1;36m]\e[0m \e[0m\e[1;33mstatus numbered\e[0m'
    echo $'\e[0m\e[1;36m[\e[1;37m03\e[0m\e[0m\e[1;36m]\e[0m \e[0m\e[1;33mstatus verbose\e[0m' 
    echo ""
    read -p $'\e[1;36m[*]\e[1m \e[1;37mChoose an option:\e[1m ' statusOption
    
    if [[ $statusOption == 1 || $statusOption == 01 ]];
    then
        echo ""
        sudo ufw status
    elif [[ $statusOption == 2 || $statusOption == 02 ]];
    then
        echo ""
        sudo ufw status numbered
    elif [[ $statusOption == 3 || $statusOption == 03 ]];
    then 
        echo ""
        sudo ufw status verbose
    fi  
elif [[ $option == 4 || $option == 04 ]];
then 
    echo ""
    read -p $'\e[1;36mDo you want enable UFW ? [Y/n]:\e[1m ' confirm
    if [[ $confirm = Y || $confirm = y ]];
    then
        sudo ufw enable
    elif  [[ $confirm = n || $confirm = N ]];
    then    
        echo ""
        echo $'\e[1;33mExiting ...\e[1m'
        exit
    fi  
elif [[ $option == 5 || $option == 05 ]];
then 
    echo ""
    read -p $'\e[1;36mDo you want disable UFW ? [Y/n]:\e[1m ' confirm
    if [[ $confirm = Y || $confirm = y ]];
    then 
        sudo ufw disable
    elif [[ $confirm = n || $confirm = N ]];
    then
        echo ""
        echo $'\e[1;33mExiting ...\e[1m'
        exit
    fi      
elif [[ $option == 6 || $option == 06 ]];
then 
    echo ""
    read -p $'\e[1;36mDo you want reload UFW ? [Y/n]:\e[1m ' confirm
    if [[ $confirm = Y || $confirm = y ]];
    then 
        sudo ufw reload
    elif [[ $confirm = n || $confirm = N ]];
    then 
        echo ""
        echo $'\e[1;33mExiting ...\e[1m'
        exit 
    fi      
elif [[ $option == 7 || $option == 07 ]];
then 
    echo ""
    read -p $'\e[1;36mDo you want reset UFW ? [Y/n]:\e[1m ' confirm
    if [[ $confirm = Y || $option = y ]];
    then
        sudo ufw reset
    elif [[ $confirm = n || $option = N ]];
    then 
        echo ""
        echo $'\e[1;33mExiting ...\e[1m'
        exit
    fi
elif [[ $option == 8 || $option == 08 ]];
then 
    echo ""
    echo $'\e[0m\e[1;36m[\e[1;37m01\e[0m\e[0m\e[1;36m]\e[0m \e[0m\e[1;33minstall UFW\e[0m'
    echo $'\e[0m\e[1;36m[\e[1;37m02\e[0m\e[0m\e[1;36m]\e[0m \e[0m\e[1;33muninstall UFW\e[0m' 
    echo $'\e[0m\e[1;36m[\e[1;37m03\e[0m\e[0m\e[1;36m]\e[0m \e[0m\e[1;33mdelete rule\e[0m'
    echo ""
    read -p $'\e[1;36m[*]\e[1m \e[1;37mChoose an option:\e[1m ' ufwOption
    
    if [[ $ufwOption == 1 || $ufwOption == 01 ]];
    then
        echo ""
        read -p $'\e[1;36mDo you want install UFW ? [Y/n]:\e[1m ' confirm
    fi
        if [[ $confirm = Y || $confirm = y ]];
        then
            sudo apt-get install ufw
        elif [[ $confirm = n || $confirm = N ]];
        then
            echo ""
            echo $'\e[1;33mExiting ...\e[1m'
            exit
        fi
    if [[ $ufwOption == 2 || $ufwOption == 02 ]];
    then
        echo ""
        read -p $'\e[1;36mDo you want uninstall UFW ? [Y/n]:\e[1m ' confirm
        if [[ $confirm = Y || $confirm = y ]];
        then
            sudo apt-get remove --purge ufw
        elif [[ $confirm = n || $confirm = N ]];
        then
            echo ""
            echo $'\e[1;33mExiting ...\e[1m'
            exit 
        fi
    fi
    if [[ $ufwOption == 3 || $ufwOption == 03 ]];
    then 
        echo $'\e[1;37m\e[1m'
        sudo ufw status numbered
        echo ""
        read -p $'\e[1;36m[*]\e[1m \e[1;37mWhich rule you want delete?: \e[1m' ruleOption
        sudo ufw delete $ruleOption    
    fi
elif [[ $option == 9 || $option == 09 ]];
then 
    echo ""
    echo $'\e[1;33mExiting ...\e[1m'
    exit  
fi  
