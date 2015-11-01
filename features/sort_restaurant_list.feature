Feature: Sort restaurants that are on the front page in alphabetical order 
 
  As a restaurant goer 
  So it is easier for me to find a restaurant
  I want to sort all restaurants listed on the front page in alphabetical order

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

 
Scenario: sort restaurants alphabetically
  When I am on the RestaurantFinder home page
  Then I should see "EVO Pizzeria" before "McGrady"
  And I should see "Oriental Garden" before "Peninsula Grill "
  And I should see "Halls Chophouse" before "Xiao Bao Biscuit "
  And I should see "Coast Bar and Grill" before "Red Drum Restaurant "
  And I should see "McGrady" before "Monza"
  And I should see "La Pizzeria  " before "McGrady"
  And I should see "Peninsula Grill" before "Xiao Bao Biscuit "



