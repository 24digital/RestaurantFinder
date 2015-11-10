Feature: Add check boxes to front page 
  
    As a restaurant goer
    So I can better prepare for the restaurant visit
    I want checkboxes to indicate an environment. 

Background: restaurants have been added to database

  Given the following restaurants exist:
  | id | title                   | cuisine           | price_range|
  | 1  | Oriental Garden         | Sushi             | $          |
  | 2  | Peninsula Grill         | Southern American | $$$        |
  | 3  | Halls Chophouse         | Steakhouse        | $$$        |
  | 4  | EVO Pizzeria            | Pizza             | $          |
  | 5  | McGrady                 | American          | $$         |
  | 6  | Red Drum Restaurant     | Tex-Mex           | $$         |
  | 7  | Coast Bar and Grill     | Seafood           | $$         |
  | 8  | Monza                   | Pizza             | $$         |
  | 9  | La Pizzeria             | Italian           | $          |
  | 10 | Xiao Bao Biscuit        | Asian             | $          |
  
  And the following environments exist:
  # we can switch between And and Given, it does not matter
  | restaurant_id | env_type           |
  | 1             | Outdoor sitting    |
  | 1             | Casual             |
  | 1             | Romantic           |
  | 8             | Kid friendly       |
  | 2             | Rooftop            |
  | 2             | Kid friendly       |
  | 3             | Nice view          |
  | 4             | Meet for a drink   |
  | 5             | Meet for a drink   |
  | 6             | Casual             |
  | 7             | Casual             |
  | 9             | Casual             |
  | 10            | Casual             |     

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
  Then I should see the following restaurants: Oriental Garden, Halls Chophouse, Red Drum Restaurant, Coast Bar and Grill, La Pizzeria, Xiao Bao Biscuit
  Then I should not see the following restaurants: Peninsula Grill, EVO Pizzeria, McGrady, Monza
