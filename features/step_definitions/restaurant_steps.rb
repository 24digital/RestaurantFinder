Given /the following restaurants exist/ do |restaurants_table|
  restaurants_table.hashes.each do |restaurant|
    Restaurant.create!(restaurant)
  end
end

And /the following environments exist/ do |environments_table|
  environments_table.hashes.each do |environment|
    Environment.create!(environment)
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
      # Capybara method
    else
      check(environment)
      # Capybara method
    end
  end
end

When /I check the following price range radio button: (.*)/ do |price_list|
  price_list.split(/,\s*/).each do |price| 
    # \s 	Any whitespace character
    # a* 	Zero or more of a
    price = "ranges#{price}"
      choose(price)
      # Capybara method
  
  end
end


Then /^I should (not )?see the following restaurants: (.*)$/ do |should_not_case, restaurant_list|
  restaurant_list.split(/,\s*/).each do |restaurant|
    step %Q{I should #{should_not_case}see "#{restaurant}"}
  end
end

Then /^I should (not )?see the following words: (.*)$/ do |should_not_case, word_list|
  word_list.split(/,\s*/).each do |word|
    step %Q{I should #{should_not_case}see "#{word}"}
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

When(/^I fill "(.*?)" field with "(.*?)"$/) do |arg1, arg2|
  fill_in arg1, :with => arg2
  
end


When /I (un)?select the following cuisine type options: (.*)/ do |unselect_case, cuisine_list|
  cuisine_list.split(/,\s*/).each do |cuisine| 
    # \s 	Any whitespace character
    # a* 	Zero or more of a
    cuisine_id = "cuisines"
    if unselect_case 
    # uncheck returns true or false depending on the regex above
      unselect cuisine, :from => cuisine_id
      # Capybara method
    else
      step %Q{I select "#{cuisine}" from "#{cuisine_id}"}
      # Capybara method
    end
  end
end

When /^(?:|I )click "([^"]*)"$/ do |link|
 find("a").click(link)
end