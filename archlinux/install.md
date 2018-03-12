# Install
https://wiki.archlinux.org/index.php/Installation_guide_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)
*https://www.linuxidc.com/Linux/2017-12/149838.htm
http://blog.csdn.net/r8l8q8/article/details/76516523
*https://segmentfault.com/a/1190000008280278

先建立一个主分区,下一步绑定/分区，分配大小
剩下的建立扩展分区，选择全部空间，
在逻辑分区下建立两个分区，一个交换分区，一个/home分区

因为我们已经有了三个分区，接下来就是创建文件系统来格式化分区。

我们用 mkfs 命令在根分区和 home 分区上创建文件系统，用 mkswap 创建交换分区。我们用 ext4 文件系统格式化磁盘。

    mkfs.ext4 /dev/sda1
    mkfs.ext4 /dev/sda3
    mkswap/dev/sda2
    swapon/dev/sda2

将这些分区挂载在根分区和 home 分区下：

    mount/dev/sda1 /mnt
    mkdir/mnt/home
    mount/dev/sda3 /mnt/home

## grub

pacman -S grub
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg

