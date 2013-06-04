#require 'rubygems' #hack to fix bundle viz??
source 'https://rubygems.org'

gem 'rails', '3.2.8'
gem 'dotenv', :groups => [:development, :test]

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development, :test do
  gem 'newrelic_rpm'
  #gem 'perftools.rb', just watching runtime stats

  ## dev database of choice
  #gem 'sqlite3'
  gem 'pg', '~> 0.14.1'

  gem 'letter_opener'

  gem 'quiet_assets'
  
  ## for deploys
  gem 'capistrano', '~> 2.13.5'
  ## use 'fast_remote_cache' as the capistrano strat, because we use git
  ## rails plugin install https://github.com/37signals/fast_remote_cache.git

  ## for debug
  # gem 'unicorn', '4.4.0'
  gem 'pry'
  gem 'sextant' # http://wedding.andxyz.dev/rails/routes

  # better_errors thanks to http://railscasts.com/episodes/402-better-errors-railspanel
  gem 'better_errors'
  gem 'binding_of_caller'
  # railspanel with https://github.com/asuth/subl-handler and https://github.com/dejan/rails_panel
  gem 'meta_request' 

  ## one day I'll check out live reload and guard
  #gem 'guard'
  #gem 'guard-livereload'
  #gem 'rack-livereload'
  #gem 'rb-fsevent', :require => false
  #gem 'yajl-ruby'
end

group :production do
  gem 'newrelic_rpm'

  ## prod database of choice
  gem 'pg', '~> 0.14.1'

  # Use unicorn as the app server
  gem 'unicorn', '4.4.0'
  #gem 'capistrano-unicorn' #maybe this is good? check it out sometime

  # mongrel as app server
  #gem 'mongrel'
  #gem install daemons gem_plugin mongrel mongrel_cluster --include-dependencies --no-rdoc --no-ri
  
  # Limit requests to 30 seconds
  gem 'rack-timeout'
end  

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'compass-rails'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'less-rails'
  gem 'therubyracer'
  gem 'less-rails-bootstrap', '2.2.0' # freeze it here due to using myvariable.less hacks
  #gem 'libv8' ## do I need this or ruby racer
  #gem 'turbo-sprockets-rails3' #more sprockets config precompile hell
  #gem 'twitter-bootstrap-rails' #no thanks
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails', '~> 2.0.0'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# To use debugger
# gem 'debugger'

# a hook to rehash rbenv on gem installs
gem 'rbenv-autohash'
# for my markdown template
gem 'redcarpet', '~> 2.2.2'

# needed on production, for asset stuff
gem 'rb-readline'

# Refinery CMS
gem 'refinerycms', '2.0.8'

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

