```ruby

# admin 为 user 对象的一个 boolean 属性
user.admin?
user.toggle!(:admin) # toggle! 方法会使 admin 的值在 true 和 false 之间切换
user.admin?

```

```bash

2.5.0 :001 > user = User.first
  User Load (0.1ms)  SELECT  "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT ?  [["LIMIT", 1]]
 => #<User id: 1, name: "chanweiyan007@gmail.com", email: "chanweiyan007@gmail.com", created_at: "2018-11-18 09:45:28", updated_at: "2018-11-21 13:33:35", password_digest: "$2a$10$OuB5zCLQfTwonNJwiCHJ/OkjGhYKcRm5eMqQsVB6vGC...", remember_digest: nil, admin: false>
2.5.0 :002 > user.admin?
 => false
2.5.0 :003 > user.toggle!(:admin)
   (0.1ms)  begin transaction
  SQL (0.6ms)  UPDATE "users" SET "updated_at" = ?, "admin" = ? WHERE "users"."id" = ?  [["updated_at", "2019-01-05 12:58:59.580131"], ["admin", "t"], ["id", 1]]
   (1.4ms)  commit transaction
 => true
2.5.0 :004 > user.admin?
 => true
2.5.0 :005 >

```