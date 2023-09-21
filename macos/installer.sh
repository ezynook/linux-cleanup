#!/bin/bash

set -o pipefail

Gre='\e[0;32m'
Whi='\e[0;37m'

if [ "$1" == "--install" ]; then
    echo -e "${Gre}macOS Cleanup Installation....${Whi}"
    curl -o mac-cleanup https://raw.githubusercontent.com/ezynook/linux-cleanup/main/macos/mac-cleanup
    mv mac-cleanup /usr/local/bin/mac-cleanup
    chmod +x /usr/local/bin/mac-cleanup
    echo -e "${Gre}Install macOS-Cleanup has Successfully!${Whi}"
    sleep 3
    exit 0
elif [ "$1" == "--uninstall" ]; then
    rm -f /usr/local/bin/mac-cleanup
    echo -e "${Gre}Uninstall macOS-Cleanup has Successfully!${Whi}"
else
    echo "Running Script Parameter"
    echo "--install         =       Installing macOS-Cleanup"
    echo "--uninstall       =       Uninstall macOS-Cleanup"
    exit 1
fi