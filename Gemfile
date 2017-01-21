source 'https://rubygems.org'

ruby '2.3.1'

gem 'rails', '~> 5.0.0', '>= 5.0.0.1'

# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
gem 'activerecord-reset-pk-sequence'

# Use Puma as the app server
gem 'puma', '~> 3.0'
gem 'haml-rails'
gem 'html2haml'
gem 'bootstrap-sass', '3.3.6'

# Use ActiveModel has_secure_password
gem 'bcrypt'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Use jquery as the JavaScript library
gem 'jquery-ui-rails'
gem 'rails-asset-jqueryui'

# Turbolinks makes navigating your web application faster.
# gem 'turbolinks', '~> 5'
# Build JSON APIs with ease.
gem 'jbuilder', '~> 2.5'

gem 'active_model_serializers'

# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 3.0'

gem 'kaminari'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri

  gem "better_errors"
  gem "binding_of_caller"

  gem 'rspec-rails', '~> 3.5'
  gem 'rails-controller-testing', '0.1.1'

  # Automagically launches tests for changed files
  gem 'guard'
  gem 'guard-rspec', '~> 4.6', require: false
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background.
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # For active record imitation in tests
  gem "factory_girl_rails"

  gem 'faker', '~> 1.5'
  gem 'capybara'
  gem 'capybara-ng'
  gem 'capybara-screenshot'
  gem 'spring-commands-rspec'

  # Auto cleans test db after each test run
  gem 'database_cleaner'

  # automatic merging of coverage across test suites
  gem 'simplecov', :require => false #, :group => :test
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Icons fonts
gem 'font-awesome-sass'
gem 'font-awesome-rails', '~> 4.6', '>= 4.6.3.1'

group :production do
  # For Heroku deployment
  gem 'rails_12factor'
end
