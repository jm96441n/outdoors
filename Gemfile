source 'https://rubygems.org'

ruby '2.4.0'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.3'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.7'

# BCrypt for authentication
gem 'bcrypt', '~> 3.1.7'

# JWT for authentication strategy
gem 'jwt'

# Active Model Serializers
gem 'active_model_serializers', '~> 0.10.0'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

# Postgis adapter
gem 'activerecord-postgis-adapter'

# rgeo gem to represent spatial data in ruby
gem "rgeo"

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-rails'

  # Rubocop to keep code style consistent
  gem 'rubocop', require: false

  # Brakeman to check for security vulnerabilities
  gem 'brakeman', :require => false
  gem 'rspec'
  gem 'rspec-rails'
  gem 'factory_bot_rails'

  # Bullet gem for catching potential n+1 queries
  gem 'bullet'
end

group :test do
  gem 'simplecov', :require => false
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
