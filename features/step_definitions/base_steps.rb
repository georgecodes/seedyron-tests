When /^I visit "(.*?)"$/ do | url |
  visit url
end

Then /^I should get a (\d+) status code$/ do | status_code |
  page.status_code.should == status_code.to_i
end

Then /^be somewhere on "(.*?)"$/ do |expected_uri|
  page.current_url.should start_with expected_uri
end

When /^enter username "(.*?)"$/ do |username|
  fill_in("login",  :with => username)
end

When /^enter password from "(.*?)"$/ do |env_var|
  fill_in("password",  :with => ENV[env_var])
end

When /^click "(.*?)"$/ do |button|
  click_button button
end