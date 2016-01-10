require 'nokogiri'
require 'capybara/cucumber'
require 'capybara/mechanize'
require 'uri'

ENV["SEEDY_RON_LOCAL"] ||= "http://localhost:8080"

Capybara.default_driver = :mechanize
Capybara.app_host = ENV["SEEDY_RON_LOCAL"]
