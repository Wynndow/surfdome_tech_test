ENV["RACK_ENV"] = "test"
require 'bundler/setup'

require_relative "../lib/surfdome"

RSpec.configure do |config|
  config.disable_monkey_patching!
  config.warnings = true
  config.order = :random
  Kernel.srand config.seed
end
