# caller(0) 会打印出，当前方法的一个调用栈，可以在调试时使用

def inner_method
  puts caller(0)
  # ... do stuff ...
end

# ~/Source jweiss$ ruby test.rb
# test.rb:14:in `inner_method'
# test.rb:7:in `first_method'
# test.rb:17:in `<main>'

# 用 puts 方法，调试错误
# You can use puts to do things like:
# • Printing out the values of variables
# • Keeping track of when methods were called
# • Binary searching to narrow down where a bug could be hiding (like playing the “guess a number” game)
