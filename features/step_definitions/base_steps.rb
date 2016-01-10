When /^I visit "(.*?)"$/ do | url |
  visit url
end

Then /^I should get a (\d+) status code$/ do | status_code |
  page.status_code.should == status_code.to_i
end
