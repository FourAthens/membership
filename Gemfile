source 'https://rubygems.org'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
ruby '2.3.3'
gem 'rails', '~> 5.0.1'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootstrap-sass'
gem 'devise'
gem 'devise_invitable'
gem 'high_voltage'
gem 'pg'
gem 'simple_form'
gem 'annotate'
gem 'figaro'
gem 'stripe'
gem 'rails-assets-flexslider', source: 'https://rails-assets.org'
gem 'rails-assets-jquery.scrollTo', source: 'https://rails-assets.org'
gem "font-awesome-rails"
gem 'cocoon'

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'better_errors'
  gem 'capistrano', '~> 3.0.1'
  gem 'capistrano-bundler'
  gem 'capistrano-rails', '~> 1.1.0'
  gem 'capistrano-rails-console'
  gem 'capistrano-rvm', '~> 0.1.1'
  gem 'rails_layout'
  gem 'binding_of_caller'
end

group :development, :test do
  gem 'pry-rails'
  gem 'pry-rescue'
  gem 'byebug', platform: :mri
end
