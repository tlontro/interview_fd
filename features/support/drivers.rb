# frozen_string_literal: true

# Capybara drivers module
module Drivers
  def self.driver_set(driver)
    case driver
    when :local_chrome
      register_local_chrome
    when :local_headless_chrome
      register_headless_local_chrome
    when :local_firefox
      register_local_firefox
    else
      raise NotImplementedError, "Driver #{driver} isn't supported."
    end
  end

  def self.register_local_chrome
    Capybara.register_driver :local_chrome do |app|
      Capybara::Selenium::Driver.new(app, browser: :chrome)
    end
    defaults(:local_chrome)
    true
  end

  def self.register_local_firefox
    Capybara.register_driver :local_firefox do |app|
      Capybara::Selenium::Driver.new(app)
    end
    defaults(:local_firefox)
    true
  end

  def self.register_headless_local_chrome
    Capybara.register_driver :local_headless_chrome do |app|
      capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
        chromeOptions: { args: %w[headless disable-gpu] }
      )

      Capybara::Selenium::Driver.new(
        app,
        browser: :chrome,
        desired_capabilities: capabilities
      )
    end
    Capybara.javascript_driver = :local_headless_chrome
    defaults(:local_headless_chrome)
    true
  end

  def self.defaults(driver)
    Capybara.default_driver = driver
    Capybara.default_max_wait_time = 60
    Capybara.app_host = 'https://staging-web.farmdrop.com'
  end
end
