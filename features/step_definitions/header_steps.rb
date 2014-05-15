When(/^I click the community logo$/) do
  find("#header-logo").click
end

When(/^I open language menu$/) do
  find("#header-locales-menu").click
end

Then(/^I should see "(.*)" on the language menu$/) do |language|
  steps %Q{
    Then I should see "#{language}" within "#header-locales-toggle-menu"
  }
end

When(/^I select "(.*)" from the language menu$/) do |language|
  steps %Q{
    When I follow "#{language}" within "#header-locales-toggle-menu"
  }
end