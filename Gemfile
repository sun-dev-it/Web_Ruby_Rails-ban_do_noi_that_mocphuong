source "https://rubygems.org"

gem "omniauth-rails_csrf_protection"
gem 'omniauth'
gem 'omniauth-google-oauth2'

gem 'bcrypt'

gem "tailwindcss-rails", "~> 3.3.1"

gem 'dotenv-rails'

gem "rails", "~> 8.1.1"
gem "propshaft"
gem "pg"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"
gem "bootsnap", require: false
gem "kamal", require: false
gem "thruster", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
