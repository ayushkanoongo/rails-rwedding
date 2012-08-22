#bundle install --binstubs
#http://gembundler.com/gemfile.html
source :rubygems
source "http://rubygems.org"
#source :rubyforge
#source "http://gems.rubyforge.org"
#source :gemcutter
#source "http://gemcutter.org"

gem 'refinerycms', '~> 2.0.0'
gem 'rails', '~>3.2.0'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  
  gem 'compass-rails'
  gem 'hogan_assets'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'


group :development, :test do
  gem 'evergreen', :require => 'evergreen/rails'
  gem 'rspec-rails'
end

group :test do
  gem 'cucumber-rails'
  gem 'capybara-webkit'
end

group :guard do
  gem 'guard-bundler'
  gem 'guard-cucumber'
  gem 'guard-rspec'
end

