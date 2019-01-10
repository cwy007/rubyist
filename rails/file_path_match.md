## 文件路径匹配
```
tests/**/*.rb

```
代码解释：
1. 这里的两个 ** 号表示递归，可以匹配多层文件夹；
可以匹配到下面的文件
eg：tests/models/others/user_test.rb

2. 单个 * 号表示匹配对应的文件名字


```
/ -> 根目录
/a -> 在 a 文件夹中
. -> 当前文件夹（目录）中
/a/./ -> 仍然位于 /a 中
/a/./b -> 在 /a/b 目录中
.. -> 向上移动一层
/a/./b/.. -> /a/b/.. -> /a
/a/./b/../.. -> /a/.. -> /
/a/./b/../../c -> /c

```

#### 参考链接

https://unix.stackexchange.com/questions/249039/what-means-the-dots-on-a-path