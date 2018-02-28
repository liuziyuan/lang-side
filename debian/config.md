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

### install i3 windown manager
1. `apt-get install x-window-system-core`
2. https://i3wm.org/docs/repositories.html


### install fonts
```
apt-get install ttf-wqy-zenhei
apt-get install ttf-wqy-microhei
apt-get install fonts-wqy

```