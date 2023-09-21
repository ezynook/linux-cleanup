<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Tux.svg/1200px-Tux.svg.png" width="80">

# Linux-Cleanup

## Support OS
* Debian (Ubuntu, etc.) All version
* RHEL (AlmaLinux, RockyLinux, Centos) version >= 6
<details>
  <summary>
  What does script do?
  </summary>

</br>

* Clear PM2 logs
* Clear package caches
* inactive memory and swap
* logrotate 7 days
* Trim logs file
* Remove old kernels
* Remove the Composer cache
* Remove Node.js caches
* Remove Mock caches
* Tail Log Last Proccess

</details>


---
## Install
```bash
curl -fsSL https://raw.githubusercontent.com/ezynook/linux-cleanup/main/install.sh | bash -s -- --install
```
## How to Use
```bash
$ linux-cleanup
```
## Create Scheduler
[Crontab time pattern](https://crontab.guru/)

```bash
59 23 * * * linux-cleanup #Every 23:59 every days
```
## Uninstall
```bash
curl -fsSL https://raw.githubusercontent.com/ezynook/linux-cleanup/main/install.sh | bash -s -- --uninstall
```

---

<img src="https://cdn-icons-png.flaticon.com/512/2/2235.png" width="80">

<details>
  <summary>
  What does script do?
  </summary>

</br>

* Empty the Trash on All Mounted Volumes and the Main HDD
* Clear System Log Files
* Clear Adobe Cache Files
* Cleanup iOS Applications
* Remove iOS Device Backups
* Cleanup Xcode Derived Data and Archives
* Reset iOS simulators
* Cleanup Homebrew Cache
* Cleanup Any Old Versions of Gems
* Cleanup Dangling Docker Images
* Purge Inactive Memory
* Cleanup pip cache
* Cleanup Pyenv-VirtualEnv Cache
* Cleanup npm Cache
* Cleanup Yarn Cache
* Cleanup Docker Images and Stopped Containers
* Cleanup CocoaPods Cache Files
* Cleanup composer cache
* Cleanup Dropbox cache
* Remove PhpStorm logs
* Remove Minecraft logs and cache
* Remove Steam logs and cache
* Remove Lunar Client logs and cache
* Remove Microsoft Teams logs and cache
* Remove Wget logs and hosts
* Removes Cacher logs
* Deletes Android caches
* Clears Gradle caches
* Deletes Kite logs
* Clears Go module cache
* Clears Poetry cache

</details>

## Install
```bash
curl -o mac-cleanup https://raw.githubusercontent.com/ezynook/linux-cleanup/main/macos/installer.sh | bash -s install
```