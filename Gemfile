source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.4'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootstrap-sass'
gem 'jquery-ui-rails'
gem 'font-awesome-rails'
gem 'lightbox2-rails'
gem 'devise'
gem 'pry'
gem 'pry-remote'
gem 'pry-stack_explorer'
gem 'pry-byebug'
gem 'pry-rails'
gem 'pry-rescue'
gem 'rubocop', '0.46.0'

group :development, :test do
  gem 'sqlite3', '1.3.13'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'json_spec'
  gem 'byebug', platform: :mri
  gem 'capybara'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'faker'
  gem 'guard-rspec'
  gem 'launchy'
  gem 'shoulda-matchers', '2.8.0'
  gem 'rails-controller-testing'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
