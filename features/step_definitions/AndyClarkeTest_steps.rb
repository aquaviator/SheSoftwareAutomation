Capybara.default_driver=:selenium

Given(/^I am on the application homepage$/) do
 visit 'https://stirling.she-development.net/automation'
expect(page).to have_button('Login')
end

When(/^I fill in the username field "([^"]*)"$/) do |username|
 fill_in('username', :with => username)
end
When(/^I fill in the password field "([^"]*)"$/) do |password|
 fill_in('password', :with => password)
end

When(/^I click the login button$/) do
  click_button('login')
end

Then(/^I should see Notifications$/) do
    page.should have_content('Notifications')
end

When(/^I navigate to  Modules > Environment > Air Emissions$/) do
click_link 'Modules'
find(:xpath, "//a[contains(text(),'Environment')]").click
find(:xpath, "//a[contains(text(),'Air Emissions')]").click
end

Then(/^I should be taken to the Air Emissions page$/) do
  page.should have_content('Air Emissions')
end

When(/^I Click on the New Record Button$/) do
  click_link 'New Record'
end

Then(/^I should be taken to the Air Emissions details form$/) do
    page.should have_content('Create')
end

And(/^I Submit the Required Form Data$/) do
  fill_in 'SheAirEmissions_Description', :with => 'This is a Test - keyword Andy'
  fill_in 'SheAirEmissions_SampleDate', :with => '06022021'
  find(:xpath, "//div[@id='site-wrapper']/section/form/div[4]/div/div/ul/li[3]/button").click
end

Then(/^I should see the new record in a list$/) do
  page.should have_content('keyword')
end

When(/^I click the cog to delete$/) do
  click_on(class: 'btn btn-large dropdown-toggle', match: :first)
  find(:xpath, "//div[@id='site-wrapper']/section/div[3]/div/div[3]/div[2]/ul/li[5]/a").click
  click_button('Confirm')
end

Then(/^my record is deleted successfully$/) do
  page.should have_content('Showing 0 entries')
end
