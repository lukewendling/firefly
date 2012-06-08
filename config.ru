require 'rubygems'
require 'bundler/setup'
require './lib/firefly'

disable :run

app = Firefly::Server.new do
  # The domain you use for shortening.
  #set :hostname,    "firefly.heroku.com"
  set :hostname, "tug.gs"

  # Order urls random or sequential
  set :order,       :random

  # Used for authenticating you.
  set :api_key,     ENV['API_KEY'] || "test"

  # Use Sqlite3 by default
  set :database, ENV['DATABASE_URL'] ||"sqlite3://#{Dir.pwd}/firefly.sqlite3"

  # Defaults to 25
  # set :recent_urls, 10

  # If you want to enable 'share to twitter'

  # A secure key to be used with 'share to twitter'
  # set :sharing_key,    "set-a-long-secure-key-here"
  set :sharing_key,      ""

  # Currently only twitter is supported
  # set :sharing_targets, [:twitter, :hyves, :facebook]
  set :sharing_targets, []

  # Set the TLDs (in URLs) that are allowed to be shortened
  # set :sharing_domains, ["example.com", "mydomain.com"]
  set :sharing_domains, ["tugg.com"]

  # Set your session secret here.
  # If you're unsure what to use, open IRB console and run `'%x' % rand(2**255)`
  set :session_secret, ENV['SESSION_SECRET'] || "my-secret"
end

run app
