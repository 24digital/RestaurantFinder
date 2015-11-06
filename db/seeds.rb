# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

restaurants = [{:id =>1, :title => 'Oriental Garden', :cuisine => 'Sushi', :price_range => '$'},
               {:id =>2,:title => 'Peninsula Grill', :cuisine => 'Southern American', :price_range => '$$$'},
               {:id =>3,:title => 'Halls Chophouse', :cuisine => 'Steakhouse', :price_range => '$$$'},
               {:id =>4,:title => 'EVO Pizzeria', :cuisine => 'Pizza', :price_range => '$'},
               {:id =>5,:title => 'McGrady', :cuisine => 'American', :price_range => '$$'},
               {:id =>6,:title => 'Red Drum Restaurant', :cuisine => 'Tex-Mex', :price_range => '$$'},
               {:id =>7,:title => 'Coast Bar and Grill', :cuisine => 'Seafood', :price_range => '$$'},
               {:id =>8,:title => 'Monza', :cuisine => 'Pizza', :price_range => '$'},
               {:id =>9,:title => 'La Pizzeria', :cuisine => 'Italian', :price_range => '$'},
               {:id =>10,:title => 'Xiao Bao Biscuit', :cuisine => 'Asian', :price_range => '$'}
]


restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end


environments = [{:restaurant_id => 1, :env_type => 'Outdoor sitting'},
{:restaurant_id => 1, :env_type => 'Casual'},
{:restaurant_id => 1, :env_type => 'Romantic'},
{:restaurant_id => 8, :env_type => 'Kid friendly'},
{:restaurant_id => 2, :env_type => 'Rooftop'},
{:restaurant_id => 2, :env_type => 'Kid friendly'},
{:restaurant_id => 3, :env_type => 'Nice view'},
{:restaurant_id => 4, :env_type => 'Meet for a drink'},
{:restaurant_id => 5, :env_type => 'Meet for a drink'},
{:restaurant_id => 6, :env_type => 'Casual'},
{:restaurant_id => 7, :env_type => 'Casual'},
{:restaurant_id => 9, :env_type => 'Casual'},
{:restaurant_id => 10, :env_type => 'Casual'}

]



environments.each do |environment|
   Environment.create!(environment)
end