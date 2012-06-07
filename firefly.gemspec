# -*- encoding: utf-8 -*-
require File.expand_path('../lib/firefly/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Luke Wendling"]
  gem.email         = ["luke@example.com"]
  gem.description   = %q{A URL shortener forked from ariejan/firefly project. Adds user context to click tracking}
  gem.summary       = %q{A URL shortener with user tracking}
  gem.homepage      = "https://github.com/lukewendling/firefly"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "tg-firefly"
  gem.require_paths = ["lib"]
  gem.version       = Firefly::VERSION
  gem.add_dependency "sinatra",           "~> 1.3.2"
  gem.add_dependency "sinatra-contrib",   "~> 1.3.1"
  gem.add_dependency "dm-core",           "~> 1.2.0"
  gem.add_dependency "dm-migrations",     "~> 1.2.0"
  gem.add_dependency "dm-transactions",   "~> 1.2.0"
  gem.add_dependency "dm-aggregates",     "~> 1.2.0"
  gem.add_dependency "dm-mysql-adapter",  "~> 1.2.0"
  gem.add_dependency "haml",              "~> 3.1.4"
  gem.add_dependency "escape_utils",      "~> 0.2.4"
  gem.add_dependency "thin"
  gem.add_development_dependency "rspec",             "~> 2.8.0"
  gem.add_development_dependency "rack-test",         "~> 0.6.1"
  gem.add_development_dependency "dm-sqlite-adapter", "~> 1.2.0"
  gem.add_development_dependency "database_cleaner",  "~> 0.7.1"
end
