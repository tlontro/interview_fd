# frozen_string_literal: true

# Login page elements
class LoginPage < SitePrism::Page
  set_url '/login'
  set_url_matcher(%r{farmdrop.com/?})

  element :email, '#email'
  element :password, '#password'
  element :log_in, '#email-login-form-submit'

  # please implement the following selectors:
  # element :forgot_password
  # element :sign_up
end
