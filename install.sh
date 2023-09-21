#!/bin/bash

set -o pipefail

Gre='\e[0;32m'
Whi='\e[0;37m'

if [ "$1" == "--install" ]; then
    echo -e "${Gre}Linux Cleanup Installation....${Whi}"
    curl -o linux-cleanup https://raw.githubusercontent.com/ezynook/linux-cleanup/main/src/linux-cleanup
    mv linux-cleanup /usr/local/bin/linux-cleanup
    chmod +x /usr/local/bin/linux-cleanup
    echo -e "${Gre}Install Linux-Cleanup has Successfully!${Whi}"
    sleep 3
    exit 0
elif [ "$1" == "--uninstall" ]; then
    rm -f /usr/local/bin/linux-cleanup
    echo -e "${Gre}Uninstall Linux-Cleanup has Successfully!${Whi}"
else
    echo "Running Script Parameter"
    echo "--install         =       Installing Linux-Cleanup"
    echo "--uninstall       =       Uninstall Linux-Cleanup"
    exit 1
fi