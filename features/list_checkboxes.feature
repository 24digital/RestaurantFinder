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