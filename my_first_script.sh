#!/bin/bash

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

