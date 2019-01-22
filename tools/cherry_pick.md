### 简述
>git cherry-pick可以选择某一个分支中的一个或几个commit(s)来进行操作。例如，假设我们有个稳定版本
的分支，叫v2.0，另外还有个开发版本的分支v3.0，我们不能直接把两个分支合并，这样会导致稳定版本混乱，
但是又想增加一个v3.0中的功能到v2.0中，这里就可以使用cherry-pick了,其实也就是对已经存在的commit
进行再次提交.

```
先进到接受分支，然后在执行 cherry-pick

git checkout 接受分支
git cherry-pick <commit id>
```

```
git cherry-pick <commit id>:单独合并一个提交
git cherry-pick -x <commit id>：同上，不同点：保留原提交者信息。
```

```
git cherry-pick <start-commit-id>..<end-commit-id>
git cherry-pick <start-commit-id>^..<end-commit-id>
```

前者表示把到之间(左开右闭，不包含start-commit-id)的提交cherry-pick到当前分支；
后者有”^”标志的表示把到之间(闭区间，包含start-commit-id)的提交cherry-pick到当前分支。


#### 参考链接
https://blog.csdn.net/qq_15037231/article/details/81504575
https://www.jianshu.com/p/08c3f1804b36
