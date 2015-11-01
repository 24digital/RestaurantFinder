# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

restaurants = [{:title => 'Oriental Garden', :cuisine => 'Sushi', :price_range => '$'},
               {:title => 'Peninsula Grill', :cuisine => 'Southern American', :price_range => '$$$'},
               {:title => 'Halls Chophouse', :cuisine => 'Steakhouse', :price_range => '$$$'},
               {:title => 'EVO Pizzeria', :cuisine => 'Pizza', :price_range => '$'},
               {:title => 'McGrady', :cuisine => 'American', :price_range => '$$'},
               {:title => 'Red Drum Restaurant', :cuisine => 'Tex-Mex', :price_range => '$$'},
               {:title => 'Coast Bar and Grill', :cuisine => 'Seafood', :price_range => '$$'},
               {:title => 'Monza', :cuisine => 'Pizza', :price_range => '$'},
               {:title => 'La Pizzeria', :cuisine => 'Italian', :price_range => '$'},
               {:title => 'Xiao Bao Biscuit', :cuisine => 'Asian', :price_range => '$'},
    	 
  	 ]

restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end