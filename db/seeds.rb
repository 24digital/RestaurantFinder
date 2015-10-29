# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

restaurants = [{:title => 'Oriental Garden', :couisine => 'Sushi', :price_range => '$'},
               {:title => 'Peninsula Grill', :couisine => 'Southern American', :price_range => '$$$'},
               {:title => 'Halls Chophouse', :couisine => 'Steakhouse', :price_range => '$$$'},
               {:title => 'EVO Pizzeria', :couisine => 'Pizza', :price_range => '$'},
               {:title => 'McGrady', :couisine => 'American', :price_range => '$$'},
               {:title => 'Red Drum Restaurant', :couisine => 'Tex-Mex', :price_range => '$$'},
               {:title => 'Coast Bar and Grill', :couisine => 'Seafood', :price_range => '$$'},
               {:title => 'Monza', :couisine => 'Pizza', :price_range => '$'},
               {:title => 'La Pizzeria', :couisine => 'Italian', :price_range => '$'},
               {:title => 'Xiao Bao Biscuit', :couisine => 'Asian', :price_range => '$'},
    	 
  	 ]

restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end