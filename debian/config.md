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


### install zsh oh-my-zsh, http://ohmyz.sh/
```
sudo apt-get install zsh
chsh -s $(which zsh)

sudo apt-get install curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

```

### set auto start x-windows
1. For Bash, add the following to the bottom of ~/.bash_profile. If the file does not exist, copy a skeleton version from /etc/skel/.bash_profile. For Zsh, add it to ~/.zprofile. 
2. cp code to file
```
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
```

### set time zone
```
sudo timedatectl set-timezone 'Asia/Shanghai'
```

### vbox addition, (optional)
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

### install rofi extension dmenu, (optional)
1. install 
```
sudo apt-get install rofi
```
2. config rofi,create a config file at `~/.config/rofi/config`, and add config content
```
! Rofi config file
rofi.modi:          drun,run
rofi.location:      1
rofi.columns:       1
rofi.width:         100
rofi.drun-icon-theme: Pop
rofi.show-icons:    true
rofi.font:          hack 10
rofi.modi:          combi
rofi.theme:         ~/.config/rofi/themes/Arc-Dark.rasi
```

3. update i3 config, REMOVE (bindsym $mod+d exec dmenu_run) , change to
```
bindsym $mod+d exec --no-startup-id rofi -show drun
```



### install i3blocks, https://github.com/vivien/i3blocks
1. sudo apt-get install i3blocks
2. custom config 
`cp /etc/i3blocks.conf ~/.config/i3blocks/config `
3. usage
```
bar {
  status_command i3blocks
}
``` 

4. restart i3


### install i3blocks-contrib, https://github.com/vivien/i3blocks-contrib
1. download from https://github.com/vivien/i3blocks-contrib/releases
2. tar -xvf i3blocks-contrib-1.4.0.tar.gz
3. rename forld name and copy to your customized forld
4. set path on i3 config
```
bar {
        # status_command i3status
        status_command SCRIPT_DIR=~/i3wm-configs/i3blocks-contrib i3blocks
}
```
5. set .i3blocks.conf, for example:
```
[memory]
command=$SCRIPT_DIR/memory/memory # add this line
label=MEM
separator=false
interval=30
```

### install lxde system modules
```
sudo apt-get install lxappearance
sudo apt-get install pcmanfm
sudo apt-get install lxterminal

(optional)
sudo apt-get install lxtask
sudo apt-get install lxmusic
sudo apt-get install xarchiver
sudo apt-get install leafpad
```

### install fonts
```
sudo apt-get install fonts-powerline
sudo apt-get install arc-theme
```

### install font awesome
1. downlaod fonts zip, https://fontawesome.com/
2. unzip file
3. `mkdir .fonts` at your base home path
4. `sudo fc-cache -fv .fonts`


### install vimix theme
```
git clone https://github.com/vinceliuice/vimix-gtk-themes.git

sudo apt-get install gtk2-engines-murrine gtk2-engines-pixbuf libxml2-utils libglib2.0-dev

cd vimix-gtk-themes
./Install

git clone https://github.com/vinceliuice/vimix-icon-theme.git
cd vimix-icon-theme
./Installer.sh
```

### remove old linux images
```
apt-get purge linux-image-4.xx.xx-amd64
apt-get autoremove
```

### install polybar, optional
```
git clone --branch 3.1.0 --recursive https://github.com/jaagr/polybar
mkdir polybar/build
cd polybar/build
sudo apt-get install python-xcbgen libxcb-icccm4-dev libxcb1-dev xcb-proto libxcb-image0-dev libxcb-randr0-dev libalsaplayer-dev wireless-tools libcurlpp-dev libcairo2-dev libjsoncpp-dev libxcb-util0-dev libxcb-xkb-dev libxcb-ewmh-dev cmake

cmake ..
sudo make install

cd  polybar/doc
install -Dm644 config $HOME/.config/polybar/config

config:
https://github.com/jaagr/polybar/wiki
```

### install application
http://blog.csdn.net/u010284226/article/details/62037475
- thefuck https://github.com/nvbn/thefuck
- cmus https://github.com/cmus/cmus
- ranger https://github.com/ranger/ranger
- mutt http://www.mutt.org/
- neovim https://github.com/neovim/neovim

https://github.com/da-edra/dotfiles
https://github.com/clyde80/i3-configuration
https://github.com/ivyl/i3-config#general
https://github.com/jakehamilton/dotfiles
https://github.com/levinit/i3wm-config

    i3 - window managerl
    i3status - status bar
    feh - setting bg, also nice image viewer
    urxvt - terminal emulator
    unclutter - autohide mouse cursor
    udiskie - device automounting
    dunst - notifications
    pulseaudio - audio managment
    autocutsel - clipboard synchroniation
    dmenu - Super-P launcher
    pavucontrol - pulseaudio mixer
    alsamixer

from xorg

    setxkbmap - setting keyboard layout
    xmodmap - custom key changes

