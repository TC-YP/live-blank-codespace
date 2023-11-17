#!/bin/bash

##
# Color  Variables
##
cyan='\e[36m'
blue='\e[34m'
purple='\e[35m'
clear='\e[0m'

##
# Color Functions
##

ColorCyan(){
	echo -ne $cyan$1$clear
}
ColorBlue(){
	echo -ne $blue$1$clear
}
ColorPurple(){
	echo -ne $purple$1$clear
}

#script to return the current server status

server_name=$(hostname)

function memory_check() {
    echo ""
        echo "The current memory usage on ${server_name} is: "
        free -h
        echo ""
}


function cpu_check() {
    echo ""
        echo "CPU load on ${server_name} is: "
        uptime
        echo ""
}


function tcp_check() {
    echo ""
        echo "TCP connection on ${server_name} is: "
        cat  /proc/net/tcp | wc -l
        echo ""
}

function kernel_check() {
    echo ""
	echo "Kernel version on ${server_name} is: "
	echo ""
	uname -r
    echo ""
}


function all_checks() {
	memory_check
	cpu_check
	tcp_check
	kernel_check
}

all_checks

# Menu script

menu(){
echo -ne "
$(ColorCyan 'My First Menu')
$(ColorBlue '1)') Memory usage
$(ColorBlue '2)') CPU load
$(ColorBlue '3)') Number of TCP connections 
$(ColorBlue '4)') Kernel version
$(ColorBlue '5)') Check All
$(ColorBlue '0)') Exit
$(ColorPurple 'Choose an option:') "
        read a
        case $a in
	        1) memory_check ; menu ;;
	        2) cpu_check ; menu ;;
	        3) tcp_check ; menu ;;
	        4) kernel_check ; menu ;;
	        5) all_checks ; menu ;;
		0) exit 0 ;;
		*) echo -e $red"Wrong option."$clear; WrongCommand;;
        esac
}

# Call the menu function
menu