source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.0"

gem "rails", "~> 6.0.3"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 4.3"
gem "sass-rails", ">= 6"
gem "webpacker", "~> 4.0"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.7"

gem "bootsnap", ">= 1.4.2", require: false

group :development, :test do
  gem "byebug"
  gem "rspec-rails", "~> 3.0"
  gem "capybara"
  gem "database_cleaner"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", "~> 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "annotate"
  gem "guard-livereload"
  gem "rack-livereload"
end

group :test do
  gem "selenium-webdriver"
  gem "webdrivers"
end

gem "tzinfo-data"

# Custom
gem "devise", "~> 4.2"
gem "bootstrap-sass", "~> 3.3", ">= 3.3.6"
