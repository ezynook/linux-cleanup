#!/bin/bash
set -Eeo pipefail

echo "Linux Cleanup Installation...."
curl -o linux-cleanup https://raw.githubusercontent.com/ezynook/linux-cleanup/main/linux-cleanup
mv linux-cleanup /usr/local/bin/linux-cleanup
chmod +x /usr/local/bin/linux-cleanup
echo -e "Install Linux-Cleanup has Successfully"
sleep 3
exit 0