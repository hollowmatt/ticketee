Given /^there is a project called "([^"]*)"$/ do |name|
  Factory(:project, :name => name)
end

Then /^(?:|I )should not see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should_not have_content(text)
  else
    assert page.has_content?(text)
  end
end