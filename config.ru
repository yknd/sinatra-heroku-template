$:.unshift File.join(File.dirname(__FILE__), 'lib')
require 'bundler/setup'
Bundler.require

require 'app'
run MyApp
