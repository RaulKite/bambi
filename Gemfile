source 'https://rubygems.org'

gem 'rails', '3.2.11'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'

group :test do
  gem 'sqlite3'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'coffee-rails', '~> 3.2.1'
  gem 'less-rails'
  
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'

end


group :test,:development do
    gem 'rspec-rails'
    gem 'cucumber-rails', :require => false
    gem 'database_cleaner'
    gem 'factory_girl_rails'
    gem 'capybara'
end

group :development do
    gem 'capistrano'
    gem 'rvm-capistrano'
end

gem 'haml-rails'
gem 'twitter-bootstrap-rails'
gem 'bootstrap-datepicker-rails'
gem 'jquery-rails'


gem 'devise'
gem 'devise_cas_authenticatable', '1.1.3'
gem 'stamp'
gem 'letter_opener'
gem 'thinking-sphinx', '2.0.10', :require => 'thinking_sphinx'
gem 'kaminari'
gem 'cancan'


# Use unicorn as the app server
gem 'unicorn'
