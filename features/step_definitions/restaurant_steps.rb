Given /the following restaurants exist/ do |restaurants_table|
  restaurants_table.hashes.each do |restaurant|
    Restaurant.create!(restaurant)
  end
end

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  all = page.body
  if all.include?(e1) & all.include?(e2)
    all.index(e1).should <= all.index(e2) 
  end
end

When /I (un)?check the following environment checkboxes: (.*)/ do |uncheck_case, environment_list|
  environment_list.split(/,\s*/).each do |environment| 
    # \s 	Any whitespace character
    # a* 	Zero or more of a
    environment = "environments_#{environment}"
    if uncheck_case 
    # uncheck returns true or false depending on the regex above
      uncheck(environment) 
      #step %Q{I uncheck "#{environment}"}
      # taken from web_steps.rb
      # Capybara method
    else
      check(environment)
      #step %Q{I check "#{environment}"}
      # taken from web_steps.rb
      # Capybara method
    end
  end
end

Then /^I should (not )?see the following restaurants: (.*)$/ do |should_not_case, restaurant_list|
  restaurant_list.split(/,\s*/).each do |restaurant|
    step %Q{I should #{should_not_case}see "#{restaurant}"}
  end
end

Then /^the following environment checkboxes should (not )?be checked: (.*)$/ do |should_not_case, environment_list|
  environment_list.split(/,\s*/).each do |environment|
    environment = "environments_#{environment}"
    if should_not_case
      has_unchecked_field?(environment).should == true
      # Capybara method
    else
      has_checked_field?(environment).should == true
      # Capybara method
    end
  end
end
