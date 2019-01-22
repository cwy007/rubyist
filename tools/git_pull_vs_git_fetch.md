简单来说：
```
git pull
等价于下面两个操作
git fetch
git merge
```

你可以在任何时候执行 git fetch 命令，已更新在 refs/remotes/<remote>/. 下你的远程追踪分支。

使用 git fetch 不会改变 refs/heads 下面你的本地工作分支

要用远程分支更新本地分支时，使用 git pull 命令
也会更新其他远程追踪分支

git pull = git fetch + git merge