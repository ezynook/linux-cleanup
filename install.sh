#!/bin/bash
set -Eeo pipefail

Gre='\e[0;32m'
Red='\e[0;31m'
Whi='\e[0;37m'

echo "Linux Cleanup Installation...."
curl -o linux-cleanup https://raw.githubusercontent.com/ezynook/linux-cleanup/main/linux-cleanup
mv linux-cleanup /usr/local/bin/linux-cleanup
chmod +x /usr/local/bin/linux-cleanup
echo -e "${Gre}Install Linux-Cleanup has Successfully${Whi}"...
sleep 3
exit 0