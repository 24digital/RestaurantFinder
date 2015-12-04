Feature: Add a clickable link from title to restaurant details
  
  As a restaurant goer
  So I can view more information about the restaurant
  I want to be able to click on the title and see hours of operation and a link to the menu of that restaurant
  
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
  
  
  Scenario: Click on clickable title
     When I am on the RestaurantFinder home page
     When I follow "Oriental Garden"
     Then I should be on RestaurantFinder details page
     Then I should see the Phone: Address 835 Coleman Boulevard, Mount Pleasant, South Carolina 29464, Phone 843-881-3765, Hours: 4:30PM - 9:30PM
     Then I should see the Website: http://www.menupix.com/menudirectory/menu.php?id=4005848