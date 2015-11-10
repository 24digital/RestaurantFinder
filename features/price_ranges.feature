Feature: Filter restaurants by price range.
  
  As a person who is on a budget
  So I can see if I can afford the restaurant 
  I want to select a radio button for a particular price range and be able to see the list of restaurants for that price range on the next page
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
 
  


  
  Scenario: restrict to movies with '$'
  Given I am on the RestaurantFinder home page
  When I check the following price range: $
  And I press "search_submit"
  Then I should see "Oriental Garden"
  And I should see "EVO Pizzeria"
  And I should see "La Pizzeria"
  And I should see "Xiao Bao Biscuit"