Feature: Login Feature

Background:
  Given I am at the login page

Scenario: Login successfully with a valid account
  When I fill in the "tester@farmdrop.co.uk" and the "test123"
  Then I click "Log in"
  And I shall be logged in
