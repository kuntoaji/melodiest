require 'simplecov'
SimpleCov.start

ENV['RACK_ENV'] = 'test'
require_relative '../lib/sinator'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  begin
    config.filter_run :focus
    config.run_all_when_everything_filtered = true

    #config.disable_monkey_patching!
    config.warnings = false

    if config.files_to_run.one?
      config.default_formatter = 'doc'
    end

    config.profile_examples = 10
    config.order = :random

    Kernel.srand config.seed
  end
end
