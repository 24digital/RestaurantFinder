# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

restaurants = [{:title => 'Restaurant A', :cuisine => 'Cuisine A', :price_range => 'Price Range A'},
    	  {:title => 'Restaurant B', :cuisine => 'Cuisine A', :price_range => 'Price Range B'},
    	  {:title => 'Restaurant C', :cuisine => 'Cuisine A', :price_range => 'Price Range C'},
  	 ]

restaurants.each do |restaurant|
  Movie.create!(restaurant)
end