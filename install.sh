#!/bin/bash

set -o pipefail

Red='\e[0;31m'
Whi='\e[0;37m'

echo -e "${Red}Linux Cleanup Installation....${Whi}"
curl -o linux-cleanup https://raw.githubusercontent.com/ezynook/linux-cleanup/main/src/linux-cleanup
mv linux-cleanup /usr/local/bin/linux-cleanup
chmod +x /usr/local/bin/linux-cleanup
echo -e "${Red}Install Linux-Cleanup has Successfully!${Whi}"
sleep 3
exit 0