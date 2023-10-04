#!/bin/bash

set -o pipefail

echo "Emptying the Trash 🗑 on all mounted volumes and the main HDD"
sudo rm -rf /Volumes/*/.Trashes/* &>/dev/null \
    && ~/.Trash/* &>/dev/null
echo "Clearing System Cache Files"
sudo rm -rf ~/Library/Caches/* &>/dev/null \
    && /private/var/folders/bh/*/*/*/* &>/dev/null
echo "Clearing System Log Files"
sudo rm -rf /private/var/log/asl/*.asl &>/dev/null \
    && /Library/Logs/DiagnosticReports/* &>/dev/null \
    && /Library/Logs/CreativeCloud/* &>/dev/null \
    && /Library/Logs/Adobe/* &>/dev/null \
    && /Library/Logs/adobegc.log &>/dev/null \
    && ~/Library/Containers/com.apple.mail/Data/Library/Logs/Mail/* &>/dev/null \
    && ~/Library/Logs/CoreSimulator/* &>/dev/null
if [ -d "~/Library/Application Support/Adobe" ]; then
    echo "Clearing Adobe Cache Files"
    sudo rm -rf ~/Library/Application Support/Adobe/Common/Media Cache Files/* &>/dev/null
fi
if [ -d "~/Library/Application Support/Google/Chrome/" ]; then
    echo "Clearing Google Chrome Cache Files"
    sudo rm -rf ~/Library/Application Support/Google/Chrome/Default/Application Cache/* &>/dev/null
fi
echo "Cleaning up iOS Applications"
sudo rm -rf ~/Music/iTunes/iTunes Media/Mobile Applications/* &>/dev/null
echo "Removing iOS Device Backups"
sudo rm -rf ~/Library/Application Support/MobileSync/Backup/* &>/dev/null
echo "Cleaning up XCode Derived Data and Archives"
sudo rm -rf ~/Library/Developer/Xcode/DerivedData/*  &>/dev/null \
    && ~/Library/Developer/Xcode/Archives/*  &>/dev/null \
    && ~/Library/Developer/Xcode/iOS Device Logs/* &>/dev/null 
if [ -d "~/Library/Application Support/Google/DriveFS/" ]; then
    sudo rm -rf ~/Library/Application Support/Google/DriveFS/[0-9a-zA-Z]*/content_cache &>/dev/null
fi
echo "Cleaning up composer"
sudo rm -rf ~/Library/Caches/composer &>/dev/null
if [ -d "~/Library/Application Support/Steam/" ]; then
    echo "Cleaning up Steam"
    sudo rm -rf ~/Library/Application Support/Steam/appcache \
        && ~/Library/Application Support/Steam/depotcache &>/dev/null \
        && ~/Library/Application Support/Steam/logs &>/dev/null \
        && ~/Library/Application Support/Steam/steamapps/shadercache &>/dev/null \
        && ~/Library/Application Support/Steam/steamapps/temp &>/dev/null \
        && ~/Library/Application Support/Steam/steamapps/download &>/dev/null
fi
if [ -d "~/Library/Application Support/minecraft" ]; then
    echo "Clearing Minecraft Cache and Log Files"
    sudo rm -rf ~/Library/Application Support/minecraft/logs \
        && ~/Library/Application Support/minecraft/crash-reports &>/dev/null \
        && ~/Library/Application Support/minecraft/webcache &>/dev/null \
        && ~/Library/Application Support/minecraft/webcache2 &>/dev/null \
        && ~/Library/Application Support/minecraft/crash-reports &>/dev/null \
        && ~/Library/Application Support/minecraft/*.log &>/dev/null \
        && ~/Library/Application Support/minecraft/launcher_cef_log.txt &>/dev/null
fi
if [ -d "~/wget-log" ]; then
    echo "Deleting Wget log and hosts file"
    sudo rm -rf ~/wget-log &>/dev/null \
        && ~/.wget-hsts &>/dev/null \
        && ~/.cacher/logs &>/dev/null
fi
if [ -n "$(brew --version | grep Homebrew)" ]; then
    echo "Cleaning up Homebrew Cache"
    brew --cache &>/dev/null
    brew cleanup -s &>/dev/null
    brew tap --repair &>/dev/null
    brew update && brew upgrade &>/dev/null
fi
if [ -n "$(docker --version | grep 'Docker version')" ]; then
    echo "Cleaning up Docker"
    docker system prune -af &>/dev/null
    killall Docker
fi
if [ -n "$(which npm | grep npm)" ]; then
    echo "Cleaning up npm cache"
    npm cache clean --force &>/dev/null
    sudo rm -rf ~/.npm/* &>/dev/null
fi
if [ -n "$(which yarn | grep yarn)" ]; then
    echo "Cleaning up Yarn Cache"
    yarn cache clean --force &>/dev/null
    sudo rm -rf ~/Library/Caches/yarn &>/dev/null
fi
if [ -d "~/Library/Application Support/Microsoft/Teams" ]; then
    echo "Deleting Microsoft Teams logs and caches"
    sudo rm -rf ~/Library/Application Support/Microsoft/Teams/IndexedDB &>/dev/null \
        && ~/Library/Application Support/Microsoft/Teams/Cache &>/dev/null \
        && ~/Library/Application Support/Microsoft/Teams/Application Cache &>/dev/null \
        && ~/Library/Application Support/Microsoft/Teams/Code Cache &>/dev/null \
        && ~/Library/Application Support/Microsoft/Teams/blob_storage &>/dev/null \
        && ~/Library/Application Support/Microsoft/Teams/databases &>/dev/null \
        && ~/Library/Application Support/Microsoft/Teams/gpucache &>/dev/null \
        && ~/Library/Application Support/Microsoft/Teams/Local Storage &>/dev/null \
        && ~/Library/Application Support/Microsoft/Teams/tmp &>/dev/null \
        && ~/Library/Application Support/Microsoft/Teams/*logs*.txt &>/dev/null \
        && ~/Library/Application Support/Microsoft/Teams/watchdog &>/dev/null \
        && ~/Library/Application Support/Microsoft/Teams/*watchdog*.json &>/dev/null
fi
echo "Deleting Java heap dumps"
sudo rm -rf ~/*.hprof &>/dev/null
echo "Cleaning up DNS cache"
sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder
echo "Purging inactive memory"
sudo purge