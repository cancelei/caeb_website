# config/initializers/spina_blog.rb
require 'spina/blog'

Spina::Blog.configure do |config|
  config.layout = 'application'
end
