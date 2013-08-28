require 'rubygems'
require 'bundler/setup'

require 'rspec'
require 'selenium-webdriver'

def absolute_app_path
  file = File.join(File.dirname(__FILE__), 'app/Applications/PROJECT.app')
  raise "App doesn't exist #{file}" unless File.exist? file
  file
end

capabilities = {
  'browserName' => 'iOS',
  'platform' => 'Mac',
  'version' => '6.0',
  'app' => absolute_app_path
}

server_url = "http://127.0.0.1:4723/wd/hub"


RSpec.configure do |config|
  config.before(:all) do
    @driver = Selenium::WebDriver.for(:remote, 
                                      :desired_capabilities => capabilities, 
                                      :url => server_url)
  end  

  config.after(:all) do
    @driver.quit
  end  
end

