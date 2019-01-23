source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.0'

gem 'rails', '~> 5.2.2'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'bootstrap', '~> 4.1', '>= 4.1.3'
gem 'jquery-rails', '~> 4.3', '>= 4.3.3'
gem 'bcrypt', '~> 3.1', '>= 3.1.12'
gem 'will_paginate', '~> 3.1.0'
gem 'bootstrap-will_paginate', '0.0.10'
gem 'will_paginate-bootstrap', '~> 1.0', '>= 1.0.1'
gem 'carrierwave', '~> 1.3', '>= 1.3.1'
gem 'mini_magick', '~> 4.9', '>= 4.9.2'
gem 'fog', '~> 2.1'

group :development, :test do
  gem 'sqlite3'
  gem 'rails-controller-testing'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

group :production do
  gem 'pg'
  gem 'redis', '~> 4.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
