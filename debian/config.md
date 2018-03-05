# debian config

After min install, config the min debian os

### look linux version
```
cat /proc/version
lsb_release -a
```

### upgrade stable to testing
1. `vi /etc/apt/sources.list`
2. modify debian version like 'stretch' to 'testing'
3. `apt-get update `
4. `apt-get upgrade `
5. `apt-get dist-upgrade `
6. `apt-get autoremove`
7. `apt-get clean`

### install sudo
1. install sudo
```
apt-get install sudo
```
2. add authority for sudoers
```
chmod +w /etc/sudoers
```
3. config sudoers file
```
vim /etc/sudoers

username ALL=(ALL) ALL
```
4. add authority for sudoers
```
chmod -w /etc/sudoers
```

### install i3 windown manager
1. `apt-get install x-window-system-core`
2. https://i3wm.org/docs/repositories.html

### set time zone
```
sudo timedatectl set-timezone 'Asia/Shanghai
```

### vbox addition
```
sudo apt-get install build-essential linux-headers-`uname -r`

sudo sh VBoxLinuxAdditions.run
```

### install fonts
```
apt-get install ttf-wqy-zenhei
apt-get install ttf-wqy-microhei
apt-get install fonts-wqy
```

### install fctix pinyin
```
apt-get install locales
sudo dpkg-reconfigure locales
// zh_CN.UTF-8

sudo apt-get install fcitx fcitx-tools fcitx-config* fcitx-frontend* fcitx-module* fcitx-ui-* presage

sudo apt-get remove fcitx-module-kimpanel

sudo apt-get install fcitx-sunpinyin

reboot
```

### install zsh, feh etc.
