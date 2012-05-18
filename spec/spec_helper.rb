require 'bundler/setup'
Bundler.require :default, :test

require 'simplecov'
SimpleCov.start

require 'app'
require 'models'

RSpec.configure do |config|
  config.include Rack::Test::Methods
end
