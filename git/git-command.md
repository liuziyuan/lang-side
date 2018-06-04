create a new pull request
1. create a new branch from master
2. checkout the new branch
3. pull code from origin branch
4. push new branch to origin

refresh branch list
```
git remote update origin --prune
```

push code to new github project
```
1.git init
2.git remote add origin https://github.com/****.git
3.git fetch
4.git pull origin master --allow-unrelated-histories
5.git pull
6.git push
```


delete origin branch
```
git branch -r -d origin/branch-name
git push origin :branch-name
```

SSH
http://blog.csdn.net/u012948710/article/details/23762879



