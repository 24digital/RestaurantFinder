Feature: Confirm that cuisine types are visible on the home page 
  
    As a restaurant goer I need to be able to see the cuisine type
    of each restaurant in order better make a decision as to where 
    I would like to go to eat.

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
  Then I should see "Sushi"
  And I should see "Southern American"
  And I should see "Steakhouse"
  And I should see "Pizza"
  And I should see "American"
  And I should see "Tex-Mex"
  And I should see "Seafood"
  And I should see "Italian"
  And I should see "Asian"
 