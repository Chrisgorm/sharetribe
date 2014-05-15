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

When(/^I open the menu$/) do
  find("#header-menu-desktop-anchor").click
end

When(/^I follow "(.*)" within the menu$/) do |label|
  steps %Q{
    When I follow "#{label}" within "#header-menu-toggle-menu"
  }
end

When(/^I follow inbox link$/) do
  steps %Q{
    When I follow "inbox-link"
  }
end

Then(/^I should see that there (?:is|are) (\d) new messages?$/) do |message_count|
  steps %Q{
    Then I should see "#{message_count}" within "#inbox-link"
  }
end