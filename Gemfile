#require 'rubygems' #hack to fix bundle viz??
source 'https://rubygems.org'

gem 'rails', '~> 3.2.8'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development, :test do
  gem 'rbenv-autohash'
  gem 'sqlite3'

  #gem 'capistrano', '~> 2.5.3' 
  gem 'capistrano'

  #gem 'pg', '~> 0.14.1'
  gem 'pry'
  # use 'fast_remote_cache' as the capistrano strat, cause we use git
  # rails plugin install https://github.com/37signals/fast_remote_cache.git

  #gem 'guard'
  #gem 'guard-livereload'
  #gem 'rack-livereload'
  #gem 'rb-fsevent', :require => false
  #gem 'yajl-ruby'
end

group :production do
  # mongrel as app server
  #gem 'mongrel'
  #gem install daemons gem_plugin mongrel mongrel_cluster --include-dependencies --no-rdoc --no-ri
  gem 'pg', '~> 0.14.1'

  # Use unicorn as the app server
  gem 'unicorn', '4.4.0'
  #gem 'capistrano-unicorn'
end  

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'compass-rails'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'less-rails'
  gem 'therubyracer'
  gem 'less-rails-bootstrap', '2.2.0' # freeze it hear due to myvariable.less hacks
  #gem 'libv8'
  #gem 'turbo-sprockets-rails3'
  #gem 'twitter-bootstrap-rails'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails', '~> 2.0.0'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

# a hook to rehash rbenv on gem installs
# 

# Refinery CMS
gem 'refinerycms', '~> 2.0.8'

# Specify additional Refinery CMS Extensions here (all optional):
#  gem 'refinerycms-i18n', '~> 2.0.0'
#  gem 'refinerycms-blog', '~> 2.0.0'
#  gem 'refinerycms-inquiries', '~> 2.0.0'
#  gem 'refinerycms-search', '~> 2.0.0'
#  gem 'refinerycms-page-images', '~> 2.0.0'

# andys stuff for markdown in radiantcms
# gem 'maruku'
# gem 'glorify'
# gem 'sinatra'

