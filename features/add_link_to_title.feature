Feature: Filter restaurants by price range.
  
  As a person who is on a budget
  So I can see if I can afford the restaurant 
  I want to select a radio button for a particular price range and be able to see the list of restaurants for that price range on the next page
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

Scenario: restrict to restaurants with "Sushi" cuisine options
  When I am on the RestaurantFinder home page
  When I select the following cuisine type options: Sushi
  When I check the following price range radio button: $
  And I press "Search"
  Then I should see the following restaurants: Oriental Garden
  Then I should not see the following restaurants: Peninsula Grill, Halls Chophouse, Red Drum Restaurant, Coast Bar and Grill, Xiao Bao Biscuit,EVO Pizzeria, Monza, La Pizzeria, McGrady
  When I follow "Oriental Garden"
  Then I should be redirected to the details page for "Oriental Garden"
 