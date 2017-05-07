require 'rspec'
require 'rspec/expectations'
require 'appium_lib'

require_relative 'config'

# Require all page classes
Dir["spec/page/*_page.rb"].each {|file| require_relative "../#{file}"}

# Require all support modules
Dir["spec/support/*_macros.rb"].each {|file| require_relative "../#{file}"}

RSpec.configure do |config|

  config.include AcceptanceMacros

  config.before(:all) do
    options = {
      caps: {
        platformName: $config['platformName'],
        appActivity:  $config['appActivity'],
        appPackage:   $config['appPackage'],
        deviceName:   $config['deviceName']
      },
      launchTimeout: 180
    }
    puts options
    driver = Appium::Driver.new(options).start_driver
    driver.manage.timeouts.implicit_wait = 3
    Appium.promote_appium_methods Object
  end

  config.after(:all) do
    driver_quit
  end
end