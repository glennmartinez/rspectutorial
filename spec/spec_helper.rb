require_relative '../library'

require_relative '../book'

require 'rspec/expectations'
require 'capybara/rspec'
require 'capybara/webkit'
require 'yaml'
require 'selenium-webdriver' 
require 'launchy'


def base_url; 'http://localhost:8090'; end

 include Capybara::DSL


 # Capybara.default_driver = Selenium::WebDriver.for :remote, :url => "http://192.168.1.12:3001/wd/hub", :desired_capabilities => :iphone
# or use the convenience class which uses localhost:3001 by default
# driver = Selenium::WebDriver.for :iphone

 Capybara.run_server = false
     # Capybara.default_driver = :webkit
       Capybara.default_driver = :selenium 

  Capybara.app_host = base_url
 Capybara.default_wait_time = 5


# Capybara.register_driver :selenium do |app|
#   Capybara::Selenium::Driver.new(app, :browser => :chrome)
# end


# driver = Selenium::WebDriver.for :remote, :url => "http://172.20.7.128:3001/wd/hub", :desired_capabilities => :iphone
# # or use the convenience class which uses localhost:3001 by default
# driver = Selenium::WebDriver.for :iphone

# driver.navigate.to "https://pug.jira.com/wiki/plugins/servlet/mobile?#dashboard/popular/10"
# element = driver.find_element

# wait = Selenium::WebDriver::Wait.new(:timeout => 15)

# # Check that the form exists
# form = wait.until {
#     element = driver.find_element(:id, "login-types")
#     element if element.displayed?
#     element.send
# }
# puts "Test Passed: Form input found" if form.displayed?
