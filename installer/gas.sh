#!/bin/bash
# ===================
export GREEN='\033[0;32m'
export NC='\033[0m'
clear
echo -e "\e[0;32m===========================${NC}"
echo -e "\033[33m  DOWNLOADING FILE SETUP!${NC}"
echo -e "\e[0;32m===========================${NC}"
sleep 2
sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt upgrade -y && apt install -y bzip2 gzip coreutils screen curl unzip && wget https://raw.githubusercontent.com/driwwstore/project/main/dw.sh && chmod +x dw.sh && screen -S dw ./dw.sh
rm -f /root/gas.sh > /dev/null 2>&1
echo ""
