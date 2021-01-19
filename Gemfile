source 'http://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

gem 'rails', '~> 6.0.3', '>= 6.0.3.4'

gem 'twitter-bootstrap-rails'
gem 'puma', '~> 4.1'
gem 'webpacker', '~> 4.0'
gem 'devise'
gem 'devise-i18n'
gem 'russian'
gem 'rails-i18n', '~> 6.0.0'
gem 'carrierwave'
gem 'rmagick'
gem 'fog-aws'
gem 'mailjet'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'sqlite3', '~> 1.4'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'letter_opener'
end
