## Ruby 中加载代码的方式

1. require
常用于加载 gem
require 方法依赖位于加载路径 $LOAD_PATH ($:) 中的目录

2. require_relative
当外部文档与当前文件位于同一个项目时

#### 通用的经验法则：
- require 用于外部文件，例如：gems
- require_relative 用于引用位于同一目录中的文件

#### 参考链接
[Understanding Require vs. Require_relative vs. Require_all](https://medium.com/@ellishim/understanding-require-vs-require-relative-vs-require-all-80e3b26d89e6)