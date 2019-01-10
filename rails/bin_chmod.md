## rails 或 gem 中的可执行文件
#### gem
```bash
cwy@MPro ⮀ ~/cwys_mega_lotto ⮀ ⭠ master± ⮀ la ./bin/
total 16
-rwxr-xr-x  1 cwy  staff   350B Jan  8 21:13 console
-rwxr-xr-x  1 cwy  staff   131B Jan  8 21:13 setup
```

```ruby
#!/usr/bin/env ruby

require "bundler/setup"
require "cwys_mega_lotto"

# You can add fixtures and/or initialization code here to make experimenting
# with your gem easier. You can also use a different console, if you like.

# (If you use this, don't forget to add pry to your Gemfile!)
# require "pry"
# Pry.start

require "irb"
IRB.start(__FILE__)
```

#### 如何修改文件的权限 ？

```bash
chmod +x exe/mega_lotto

```