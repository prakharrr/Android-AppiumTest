# This sample code uses the Appium ruby client
# gem install appium_lib
# Then you can paste this into a file and simply run with Ruby

require 'rubygems'
require 'appium_lib'
require 'test/unit'
extend Test::Unit::Assertions


desired_caps = {
  caps: {
    platformName:  'Android',
    platformVersion: '8.1',
    deviceName:    'Nexus',
    browserName: 'Chrome',
    automationName: 'UIAutomator2'
  }
}



@appium_driver = Appium::Driver.new(desired_caps) 
@selenium_driver = @appium_driver.start_driver
Appium.promote_appium_methods Object  

@selenium_driver.get("http://www.google.com/")  
sleep(5)

element = find_element(:id, 'lst-ib')
element.click
element.send_keys 'Steven Miller Dentedghost Appium'

sleep(2)
element = find_element(:id, 'tsbb')
element.click
sleep (5)

driver_quit

puts "Tests Succeeded"
