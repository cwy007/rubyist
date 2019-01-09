# https://github.com/defunkt/unicorn/blob/e09c2ab1fbb27b261bf9299c8b9d88fb5e03f5a5/unicorn.gemspec#L17
Gem::Specification.new do |s|
  s.description = File.read('README').split("\n\n")[1]
end

# 读取文件 README 中的内容作为 gem 的描述
