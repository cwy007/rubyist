### No Version 在 Gemfile 中不指定版本号

It’s valid syntax to add a gem to a Gemfile without specifying the version:

```ruby
source 'https://rubygems.org'

# 在 Gemfile 中最好指定 gem 的版本
# 不指定 gem 版本时，会出现的两种不同情况：
# 1. 如果本地开发环境已经安装过 rails gem，最近安装的那个 gem version 将会被使用。
# 2. 如果本地不存在 rails gem，最新的 rails 稳定版本将会被安装和被使用。

gem 'rails'

```

Running `bundle install `will behave differently depending on whether the specified
is already installed on the system. The rules go something like this:

• If the gem is already present on the system, the most recent installed version is used
• If the gem is NOT installed on the system, the latest stable version is installed and used

With this alone, it’s easy to see that this can produce varying results depending
on the system. Writing applications is hard enough, there’s no need to introduce
additional challenges by specifying dependencies without a version constraint.