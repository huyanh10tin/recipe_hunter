require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'capybara/poltergeist'
require 'rails_helper'
require 'spec_helper'
RSpec.configure do |config|
  config.include Capybara::DSL
end
