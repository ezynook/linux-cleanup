<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Tux.svg/1200px-Tux.svg.png" width="100">

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
## Setup
```bash
curl -fsSL https://raw.githubusercontent.com/ezynook/linux-cleanup/main/install.sh | bash
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