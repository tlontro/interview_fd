# frozen_string_literal: true

Given(/^I am at the (.*?) page$/) do |fd_page|
  send(fd_page + '_page').load
end
