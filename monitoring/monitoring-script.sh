#!/bin/bash

print_separator() {
    echo ""
    echo "<.-'-._.-'-._.-.-'-._.-'-._.-.-'-._.-'-._.-.-'-._.-'-._.-.-'-._.-'-._.-.-'-._.-'-._.-.-'-._.-'-._.>"
    echo ""
}


echo "<=================================================================================================>"
echo -e "\e[1;34mServer Monitoring Report - $(date +"%F %k:%M:%S %Z")\e[0m"
echo "<=================================================================================================>"
print_separator
echo -e "\e[1;34mOS INFORMATION\e[0m"
echo " "
echo "  Hostname: $(hostname | cut -f 1 -d.)"
echo "  Architecture: $(uname -m)"
echo "  Kernel: $(uname -r)"
print_separator
echo -e "\e[1;34mUP TIME\e[0m"
uptime | awk '{print $3,$4}' | cut -f1 -d,
print_separator
echo -e "\e[1;34mFIRE WALL CONFIGURATION\e[0m"
sudo ufw status
print_separator
echo -e "\e[1;34mSERVICES CURRENTLY RUNNING\e[0m"
echo ""
sudo systemctl list-units --type=service | grep "running" | sed -e 's/loaded.*running.*/running/g' -e 's/.service//g'
print_separator
echo -e "\e[1;34mCPU USAGE\e[0m"
sar -P ALL -h 0 | tail -n +3 | tr -s ' ' | tr '[:lower:]' '[:upper:]' | cut -d ' ' -f 2,3,5,8 | sed -e '1 a \ ' -e 's/ALL/\*/g' | column -tes ' '
print_separator
echo -e "\e[1;34mMEMORY USAGE\e[0m"
egrep --color 'Mem|Cache|Swap' /proc/meminfo
print_separator
echo -e "\e[1;34mSTORAGE USAGE\e[0m"
df -h
print_separator
echo -e "\e[34mDISK I/O\e[0m"
iostat -d
print_separator
echo -e "\e[1;34mUSERS LOG INFORMATION\e[0m"
echo -e "\e[34mOverall log\e[0m"
last
print_separator
echo -e "\e[1;34mIP ADDRESSES\e[0m"
echo -e "\e[34mPublic IP\e[0m"
curl -s ipecho.net/plain;echo
echo -e "\e[34mPrivate IP\e[0m"
/sbin/ip -o -4 addr list enp0s1 | awk '{print $4}' | cut -d/ -f1
print_separator
echo -e "\e[1;34mNETWORK SERVICES\e[0m"
sudo ss -tlnp | tail -n+2 | tr -s ' ' | cut -d ' ' -f 1,4,7 | column -ts ' '
print_separator
echo -e "\e[1;34mNETWORK CONNECTIVITY\e[0m"
ping -c 1 google.com &> /dev/null && echo "  Status: Connected" || echo "  Status: Disconnected"
print_separator
echo -e "\e[1;34mDHCP ATTRIBUTION\e[0m"
dhcp-lease-list
print_separator
echo -e "\e[1;34mDNS CONFIGURATION\e[0m"
cat /etc/bind/zones/db.librarykali
print_separator