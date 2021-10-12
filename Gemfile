source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails', '~> 5.2.3'
gem 'rails-ujs', '~> 5.1.0.beta1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.3'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false


#GEMAS AGREGADAS
gem 'flickraw', '~> 0.9.9'
gem 'jquery-rails', '~> 4.3', '>= 4.3.3'
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
# gem 'bootstrap', '~> 4.1', '>= 4.1.3'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'popper_js', '~> 1.14.5'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.4'
gem 'simple_form'
gem 'breadcrumbs_on_rails'
gem 'simple_token_authentication', '~> 1.15', '>= 1.15.1'
gem 'devise'
gem 'devise-i18n', '~> 1.6', '>= 1.6.5'
gem 'will_paginate', '~> 3.1', '>= 3.1.6'
gem 'will_paginate-bootstrap', '~> 1.0', '>= 1.0.1'
gem 'cancancan', '~> 2.3'
gem 'dotenv-rails', '~> 2.5', require: 'dotenv/rails-now'
gem 'carrierwave', '~> 1.2', '>= 1.2.3'
gem 'fog-aws', '~> 3.3'
gem 'recaptcha', '~> 4.13', '>= 4.13.1', require: 'recaptcha/rails'
gem 'oj', '~> 3.7', '>= 3.7.4'
gem 'rack-cors', '~> 1.0'
gem 'sdoc', '~> 1.0'
gem 'omniauth-google-oauth2'
gem 'binding_of_caller', '~> 0.8.0'
gem 'will_paginate-bootstrap', '~> 1.0', '>= 1.0.1'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  #GEMAS AGREGADAS
  gem 'rspec-rails', '~> 3.8'
  gem 'rails-controller-testing'
  gem 'factory_bot_rails'
  gem 'faker' #para generar data  
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

#GEMA AGREGADA
  gem 'better_errors'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
  gem 'mocha'
end

gem 'rails_12factor', group: :production
gem 'execjs'
gem 'therubyracer', :platforms => :ruby
