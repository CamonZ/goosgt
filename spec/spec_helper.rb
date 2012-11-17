require 'simplecov'
require 'simplecov-sublime-ruby-coverage'

SimpleCov.formatter = SimpleCov::Formatter::SublimeRubyCoverageFormatter
SimpleCov.start
files = Dir[ENV['PWD'] + "/chapters/**/*.rb"]
files.each {|f| require_relative f }

RSpec.configure do |config|
  config.mock_with :rspec
end