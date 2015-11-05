Feature: Add check boxes to front page 
  
    As a restaurant goer
    So I can better prepare for the restaurant visit
    I want checkboxes to indicate an environment. 

Background: restaurants have been added to database

  Given the following restaurants exist:
  | title                   | cuisine           | price_range|
  | Oriental Garden         | Sushi             | $          |
  | Peninsula Grill         | Southern American | $$$        |
  | Halls Chophouse         | Steakhouse        | $$$        |
  | EVO Pizzeria            | Pizza             | $          |
  | McGrady                 | American          | $$         |
  | Red Drum Restaurant     | Tex-Mex           | $$         |
  | Coast Bar and Grill     | Seafood           | $$         |
  | Monza                   | Pizza             | $$         |
  | La Pizzeria             | Italian           | $          |
  | Xiao Bao Biscuit        | Asian             | $          |

Scenario: view checkboxes
  When I am on the RestaurantFinder home page
  Then I should see "Outdoor sitting"
  And I should see "Casual"
  And I should see "Romantic"
  And I should see "Kid friendly"
  And I should see "Meet for a drink"
  And I should see "Group dining"
  And I should see "Rooftop"
  And I should see "Nice view"
  
Scenario: check "Outdoor sitting", "Casual", "Romantic", or "Rooftop" environment checkboxes
  When I am on the RestaurantFinder home page
  When I check the following environment checkboxes: Outdoor sitting, Casual, Romantic, Rooftop
  When I uncheck the following environment checkboxes: Kid friendly, Meet for a drink, Group dining, Nice view
  And I press "Search" 
  Then the following environment checkboxes should be checked: Outdoor sitting, Casual, Romantic, Rooftop
  Then the following environment checkboxes should not be checked: Kid friendly, Meet for a drink, Group dining, Nice view
  
Scenario: restrict to restaurants with "Outdoor sitting", "Casual", "Romantic", or "Nice view" environments environment options
  When I am on the RestaurantFinder home page
  When I check the following environment checkboxes: Outdoor sitting, Casual, Romantic, Nice view
  When I uncheck the following environment checkboxes: Kid friendly, Meet for a drink, Group dining, Rooftop
  And I press "Search" 
  Then I should see the following restaurants: "Oriental Garden", "Halls Chophouse"
  Then I should not see the following restaurants: "Peninsula Grill","Peninsula Grill","McGrady","EVO Pizzeria","Red Drum Restaurant","Coast Bar and Grill","Monza","La Pizzeria", "Xiao Bao Biscuit"
  
  
  