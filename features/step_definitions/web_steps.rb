Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^(?:|I )follow "([^"]*)"$/ do |link|
  click_link(link)
end

When /^(?:|I )fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end
When /^(?:|I )press "([^"]*)"$/ do |link|
  click_button(link)
end
Then /^(?:|I )should see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end
#When /^I press "([^"]*)"$/ do |arg1|
#  pending # express the regexp above with the code you wish you had
#end

#Then /^I should see "([^"]*)"$/ do |arg1|
#  pending # express the regexp above with the code you wish you had
#end

