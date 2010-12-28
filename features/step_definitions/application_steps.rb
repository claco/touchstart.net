Given /^I should receive an OK status$/ do
  response.status.should == 200
end

Then /^I should see a list of domains$/ do
  response.should have_selector('div.domains')
end

