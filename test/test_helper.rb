ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...

  SimpleCov.start do
    add_filter "/vendor/" # Ignores any file containing "/vendor/" in its path.
    add_filter "/lib/myfile.rb" # Ignores a specific file.
  end
end
