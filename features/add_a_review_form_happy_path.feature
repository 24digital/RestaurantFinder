Feature: Add a form to leave a review

As a restaurant goer
So I can review the restaurants
I want to add a form where I can leave a review for any restaurant  

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
 
   Scenario: fill in the form and click submit button
      When I am on the RestaurantFinder detail page
      When I fill "name" field with "Anna Sandifer"
      When I fill "description" field with "Great Food"
      And I press "Submit"
      Then I should see "Details about Coast Bar and Grill Address: Phone: Timings: Website: http:// Back to restaurant list Leave a review for Coast Bar and Grill Name: Description : Name Review Anna Sandifer Great Food"
     