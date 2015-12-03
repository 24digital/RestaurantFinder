Feature: User needs to be able to go back to the previous page from the search result page
  As a application user
  So I can go back to the initial search page from the result page
  I should be able to see a link on the result page which when I click will take me to the initial search page.
  
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
 
  Scenario: redirect back to home page from details page 
     When I am on the RestaurantFinder detail page
     When I follow "Back to restaurant list"
     Then I should  be redirected to "RestaurantFinder home" page 