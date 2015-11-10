# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

restaurants = [{:id =>1, :title => 'Oriental Garden', :cuisine => 'Sushi', :price_range => '$', :website => 'www.oriental.com', :phone => 8432283838},
               {:id =>2,:title => 'Peninsula Grill', :cuisine => 'Southern American', :price_range => '$$$', :website => 'www.PeninsulaGrill.com', :phone => 8437599823},
               {:id =>3,:title => 'Halls Chophouse', :cuisine => 'Steakhouse', :price_range => '$$$', :website => 'www.Halls.com', :phone => 8437899992},
               {:id =>4,:title => 'EVO Pizzeria', :cuisine => 'Pizza', :price_range => '$', :website => 'www.EVO.com', :phone => 8432222222},
               {:id =>5,:title => 'McGrady', :cuisine => 'American', :price_range => '$$', :website =>'www.McGrady.com', :phone =>4929283541},
               {:id =>6,:title => 'Red Drum Restaurant', :cuisine => 'Tex-Mex', :price_range => '$$', :website =>'www.rdr.com', :phone => 8439999999},
               {:id =>7,:title => 'Coast Bar and Grill', :cuisine => 'Seafood', :price_range => '$$', :website => 'www.coastB&G.com', :phone =>8435768845},
               {:id =>8,:title => 'Monza', :cuisine => 'Pizza', :price_range => '$', :website => 'www.monza.com', :phone =>8432229993},
               {:id =>9,:title => 'La Pizzeria', :cuisine => 'Italian', :price_range => '$', :website => 'wwww.lapizzeria.com', :phone =>8439090993},
               {:id =>10,:title => 'Xiao Bao Biscuit', :cuisine => 'Asian', :price_range => '$', :website => 'www.xiao.com', :phone => 8432222222}
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
{:restaurant_id => 5, :env_type => 'Meet for a drink'}

]



environments.each do |environment|
   Environment.create!(environment)
end