# Generated by cucumber-sinatra. (2014-09-08 10:52:43 +0100)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'lib/bookmark_manager.lib')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = BookmarkManager

class BookmarkManagerWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  BookmarkManagerWorld.new
end
