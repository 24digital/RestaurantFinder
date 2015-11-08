Feature: Filter restaurants by cuisine type 
  
    As a food lover
    So I can filter restaurants by type of cuisine they offer
    I want select a type of cuisine from the list of cuisines 
    and be able to see a list of restaurants serving that 
    particular cuisine on the next page.

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

#Scenario: see cuisine type selection menu with the following options: "Sushi", "Southern American", "Steakhouse", "Pizza", "American", "Tex-Mex", "Seafood", "Italian", "Asian"
#  When I am on the RestaurantFinder home page
#  Then I should see the "cuisines" selection menue with the following options: Sushi, Southern American, Steakhouse, Pizza, American, Tex-Mex, Seafood, Italian, Asian 

Scenario: select "Sushi", "Pizza", "Italian", or "Tex-Mex" cuisine type options
  When I am on the RestaurantFinder home page
  When I select the following cuisine type options: Sushi, Pizza, Italian, Tex-Mex
  When I unselect the following cuisine type options: Southern American, Steakhouse, American, Seafood, Asian
  #When I uncheck the following environment checkboxes: Kid friendly, Meet for a drink, Group dining, Nice view
  And I press "Search" 
  Then the following cuisine options should be selected: Sushi, Pizza, Italian, Tex-Mex
  Then the following cuisine options should not be selected: Southern American, Steakhouse, American, Seafood, Asian

Scenario: restrict to restaurants with "Sushi", "Pizza", "Italian", or "American" cuisine options
  When I am on the RestaurantFinder home page
  When I select the following cuisine type options: Sushi, Pizza, Italian, American
  When I unselect the following cuisine type options: Southern American, Steakhouse, Tex-Mex, Seafood, Asian
  And I press "Search"
  Then I should see the following restaurants: Oriental Garden, EVO Pizzeria, Monza, La Pizzeria, McGrady
  Then I should not see the following restaurants: Peninsula Grill, Halls Chophouse, Red Drum Restaurant, Coast Bar and Grill, Xiao Bao Biscuit