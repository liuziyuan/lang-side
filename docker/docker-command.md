look images
```
sudo docker images
```

remove images
```
sudo docker rmi -f 35e0567bf687
```

look all of container
```
sudo docker ps -a
```

remove container
```
sudo docker rm id#####
```

look volume
```
sudo dokcer volume ls
```

look volume detail info
```
sudo docker volume inspect [volume_name]
```

look container :
使用 `docker exec -it  container_id/name  bash` 进入bash

然后使用`cat /etc/hosts`命令查看容器的IP地址

 
本文介绍如何在Arch Linux下安装Docker，及解决下载镜像慢的问题。

一、安装docker
安装docker

pacman -S docker
启动docker

systemctl start docker
开机启动docker

systemctl enable docker
关掉开机启动docker

systemclt disable docker
