require "rspec"
require "capybara"
require "capybara/rspec"

require_relative "../spec"

Capybara.app = Sinatra::Application
