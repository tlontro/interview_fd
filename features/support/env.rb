# frozen_string_literal: true

require 'capybara'
require 'capybara/dsl'
require 'hashie'
require 'pry'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'drivers'

driver ||= ENV['DRIVER'] || 'local'
browser ||= ENV['BROWSER'] || 'chrome'

Drivers.driver_set("#{driver}_#{browser}".to_sym)

World(Capybara::DSL)
