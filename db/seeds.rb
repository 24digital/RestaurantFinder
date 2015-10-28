# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

restaurants = [{:title => 'C Restaurant', :cuisine => 'Cuisine C', :price_range => 'Price Range C'},
    	  {:title => 'A Restaurant', :cuisine => 'Cuisine A', :price_range => 'Price Range A'},
    	  {:title => 'D Restaurant', :cuisine => 'Cuisine D', :price_range => 'Price Range D'},
    	  {:title => 'B Restaurant', :cuisine => 'Cuisine B', :price_range => 'Price Range B'},
  	 ]

restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end