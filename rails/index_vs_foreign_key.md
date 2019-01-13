## 迁移文件中索引和外键约束的区别
- index: true
为外键添加索引后，会加快相关数据的查询速度

- foreign_key: true
为外键添加外键`约束`后（例如：books belongs_to author)，要删除作者 author 时，必须先删除作者
所拥有的图书 books

> 为了提升查询性能，最好为外键添加索引;
> 为了保证参照完整性，最好为外键添加约束: