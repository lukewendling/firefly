source 'https://rubygems.org'

gem "sinatra",           "~> 1.3.2"
gem "sinatra-contrib",   "~> 1.3.1"
gem "dm-core",           "~> 1.2.0"
gem "dm-migrations",     "~> 1.2.0"
gem "dm-transactions",   "~> 1.2.0"
gem "dm-aggregates",     "~> 1.2.0"
gem "haml",              "~> 3.1.4"
gem "escape_utils",      "~> 0.2.4"
gem "thin"
gem "json"

group :production do
  gem 'dm-postgres-adapter'
end

group :development do
  gem "pry"
end

group :test do
  gem "rspec",             "~> 2.8.0"
  gem "rack-test",         "~> 0.6.1"
  gem "dm-sqlite-adapter", "~> 1.2.0"
  gem "database_cleaner",  "~> 0.7.1"
end
