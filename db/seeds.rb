# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

restaurants = [{:id =>1, :title => 'Oriental Garden', :cuisine => 'Sushi', :price_range => '$', :website => 'http://www.menupix.com/menudirectory/menu.php?id=4005848', :address => 'Address 835 Coleman Boulevard, Mount Pleasant, South Carolina 29464',:phone => '843-881-3765', :timings => '4:30PM - 9:30PM'},
               {:id =>2,:title => 'Peninsula Grill', :cuisine => 'Southern American', :price_range => '$$$', :website => 'https://www.peninsulagrill.com/', :address => 'Address: 112 North Market Street, Charleston, South Carolina 29401',:phone => '843-723-0700', :timings => '5:30PM - 10:00PM'},
               {:id =>3,:title => 'Halls Chophouse', :cuisine => 'Steakhouse', :price_range => '$$$', :website => 'https://hallschophouse.com/', :address => 'Address: 434 King Street, Charleston, South Carolina 29403',:phone => '843-727-0090', :timings => '4:00PM - 2:00 AM'},
               {:id =>4,:title => 'EVO Pizzeria', :cuisine => 'Pizza', :price_range => '$', :website => 'http://www.evopizza.com/', :address => 'Address: 1075 East Montague Avenue, North Charleston, South Carolina 29405',:phone => '843-225-1796', :timings => '11:00AM - 2:30PM, 5:00PM - 10:00PM'},
               {:id =>5,:title => 'McGrady', :cuisine => 'American', :price_range => '$$', :website =>'http://mccradysrestaurant.com/', :address =>'Address: 2 Unity Alley, Charleston, South Carolina 29401',:phone => '843-577-0025', :timings => '5:00PM - 9:30PM'},
               {:id =>6,:title => 'Red Drum Restaurant', :cuisine => 'Tex-Mex', :price_range => '$$', :website =>'http://www.reddrumrestaurant.com/', :address => 'Address: 803 Coleman Boulevard, Mount Pleasant, South Carolina 29464',:phone => '843-849-0313', :timings => ' 5:30PM - 10:30PM'},
               {:id =>7,:title => 'Coast Bar and Grill', :cuisine => 'Seafood', :price_range => '$$', :website => 'http://www.holycityhospitality.com/coast-bar-and-grill/', :address =>'Address: 39 John Street, Charleston, South Carolina 29403',:phone => '843-722-8838', :timings => '5:00PM - 10:00PM'},
               {:id =>8,:title => 'Monza', :cuisine => 'Pizza', :price_range => '$', :website => 'http://monzapizza.com/', :address =>'Address: 451 King Street, Charleston, South Carolina 29403',:phone => '843-720-8787', :timings => '11:00AM - 10:00PM'},
               {:id =>9,:title => 'La Pizzeria', :cuisine => 'Italian', :price_range => '$', :website => 'http://www.mtplapizzeria.com/', :address =>'Address: 976 Houston Northcutt Boulevard, Mount Pleasant, South Carolina 29464',:phone => '843-375-4607', :timings => '3:30PM-10:00PM'},
               {:id =>10,:title => 'Xiao Bao Biscuit', :cuisine => 'Asian', :price_range => '$', :website => 'http://xiaobaobiscuit.com/', :address => 'Address: 224 Rutledge Ave, Charleston, South Carolina 29401',:phone => '-', :timings => '11:30AM - 2:00PM, 5:30PM - 11:00PM'},
               {:id =>11,:title => 'Langdons Restaurant & Wine Bar', :cuisine => 'American', :price_range => '$$', :website => 'http://www.owensdininggroup.com/', :address => 'Address: 778 South Shelmore Blvd, Mount Pleasant, South Carolina 29464',:phone => '843-388-9200', :timings => '11:30AM - 2:00PM, 5:00PM - 10:00PM'},
               {:id =>12,:title => 'FIG', :cuisine => 'American', :price_range => '$$$', :website => 'http://eatatfig.com/', :address => 'Address: 232 Meeting Street, Charleston, South Carolina 29401',:phone => '843-805-5900', :timings => '5:30PM - 10:30PM'},
               {:id =>13,:title => 'Trattoria Lucca', :cuisine => 'Italian', :price_range => '$$', :website => 'http://luccacharleston.com/', :address => 'Address: 41 Bogard Street, Charleston, South Carolina 29403',:phone => '843-973-3323', :timings => '6:00PM - 10:00PM'},
               {:id =>14,:title => 'Wild Olive Cucina Italiana', :cuisine => 'Italian', :price_range => '$$', :website => 'http://www.wildoliverestaurant.com/', :address => 'Address: 2867 Maybank Highway, Johns Island, South Carolina 29455',:phone => '843-737-4177', :timings => '5:30PM - 10:00PM'},
               {:id =>15,:title => 'Fish', :cuisine => 'Seafood', :price_range => '$$', :website => 'http://www.fishrestaurantcharleston.com/', :address => 'Address: 442 King Street, Charleston, South Carolina 29403',:phone => '843-722-3474', :timings => '5:30PM - 10:00PM'},
               {:id =>16,:title => 'The Ordinary', :cuisine => 'Seafood', :price_range => '$$$', :website => 'http://eattheordinary.com/the-restaurant/', :address => 'Address: 544 King St, Charleston, South Carolina 29403',:phone => '843-414-7060', :timings => '5:00PM - 10:30PM'},
               {:id =>17,:title => 'Poogan’s Porch', :cuisine => 'Southern American', :price_range => '$', :website => 'http://www.poogansporch.com/', :address => 'Address: 72 Queen St Charleston, SC 29401',:phone => '843-577-2337', :timings => '11:30AM - 9:30PM '},
               {:id =>18,:title => 'Tattooed Moose', :cuisine => '$', :price_range => 'American', :website => 'http://tattooedmoose.com/', :address => 'Address:1137 Morrison Dr, Charleston, South Carolina 29403',:phone => '843-277-2990', :timings => '11:30AM - 2:00AM'},
               {:id =>19,:title => 'Oak Steakhouse', :cuisine => 'Steakhouse', :price_range => '$$$', :website => 'http://oaksteakhouserestaurant.com/', :address => 'Address: 17 Broad Street, Charleston, South Carolina 29401',:phone => '843-722-4220', :timings => '5:00PM - 10:00PM'},
               {:id =>20,:title => 'Octobachi', :cuisine => 'Asian', :price_range => '$', :website => 'http://www.octobachi.com/', :address => 'Address: 119 Spring Street, Charleston, South Carolina 29403',:phone => 'NA', :timings =>'Hours: 4:00PM - 11:00PM'},
               {:id =>21,:title => 'Old Village Post House Restaurant', :cuisine => 'Southern American', :price_range => '$$', :website => 'http://oldvillageposthouseinn.com/', :address => 'Address: 101 Pitt St, Mount Pleasant, South Carolina 29464',:phone => ' 843-388-8935', :timings => '5:00PM - 10:00PM'},
               {:id =>22,:title => 'Five Loaves Cafe', :cuisine => 'Southern American', :price_range => '$', :website => 'http://www.fiveloavescafe.com/', :address => 'Address: 43 Cannon Street, Charleston, South Carolina 29403',:phone => '843-937-4303', :timings => '11:00AM - 9:30PM'},
               {:id =>23,:title => 'The Wich Doctor', :cuisine => 'Pizza', :price_range => '$', :website => 'http://www.thewichdoctor.net/', :address => 'Address: 106 W Hudson Ave, Folly Beach, South Carolina 29439',:phone => '843-588-6666', :timings => '12:00PM - 8:00PM'},
               {:id =>24,:title => 'Santis', :cuisine => 'Tex-Mex', :price_range => '$', :website => 'http://www.charlestoncitypaper.com/charleston/santis/Location?oid=1068404', :address => 'Address: 1302 Meeting Street Road, Charleston, South Carolina 29405',:phone => '843-722-2633', :timings => '11:00AM - 10:00PM'},
               {:id =>25,:title => 'Zia Taqueria', :cuisine => 'Tex-Mex', :price_range => '$', :website => 'http://www.ziataco.com/', :address => 'NA'},
               {:id =>26,:title => 'Taco Boy', :cuisine => 'Tex-Mex', :price_range => '$', :website => 'http://www.tacoboy.net/', :address => 'Address: 217 Huger Street, Charleston, South Carolina 29403',:phone => '843-789-3333', :timings => '11:00AM - 2:00AM'},
               {:id =>27,:title => 'O-Ku', :cuisine => 'Sushi', :price_range => '$$', :website => 'http://o-kusushi.com/', :address => 'Address: 463 King Street, Charleston, South Carolina 29403',:phone => ' 843-737-0112', :timings => '11:30AM - 2:00PM, 5:00PM - 10:30PM'},
               {:id =>28,:title => 'Tasty Thai & Sushi', :cuisine => 'Sushi', :price_range => '$$', :website => 'http://tastythaiandsushi.com/tasty-thai-sushi-downtown-charleston-sc.html', :address => 'Address: 350 King St, Charleston, SC 29401',:phone => '843-577-8813', :timings => '11:00am - 10:00PM'},
               {:id =>29,:title => 'Tsunami', :cuisine => 'Sushi', :price_range => '$$', :website => 'http://tsunamicompany.com/desserts/', :address => 'Address: 215 E Bay St, Charleston, SC 29401',:phone => '843-965-5281', :timings => 'NA'},
               {:id =>30,:title => 'Wasabi Japanese Steak House and Sushi', :cuisine => 'Sushi', :price_range => '$$', :website => 'http://www.viewmenu.com/wasabi-japanese-steak-house-2/menu?ref=google', :address => 'Address: 61 State St, Charleston, SC 29401',:phone => '843-577-5222', :timings => 'NA'}
              
               
]


restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end


environments = [{:restaurant_id => 1, :env_type => 'Outdoor sitting'},
{:restaurant_id => 1, :env_type => 'Casual'},
{:restaurant_id => 2, :env_type => 'Outdoor sitting'},
{:restaurant_id => 3, :env_type => 'Group dining'},
{:restaurant_id => 3, :env_type => 'Meet for a drink'},
{:restaurant_id => 4, :env_type => 'Outdoor sitting'},
{:restaurant_id => 4, :env_type => 'Casual'},
{:restaurant_id => 5, :env_type => 'Meet for a drink'},
{:restaurant_id => 5, :env_type => 'Group dining'},
{:restaurant_id => 6, :env_type => 'Outdoor sitting'},
{:restaurant_id => 6, :env_type => 'Meet for a drink'},
{:restaurant_id => 7, :env_type => 'Outdoor sitting'},
{:restaurant_id => 8, :env_type => 'Outdoor sitting'},
{:restaurant_id => 8, :env_type => 'Romantic'},
{:restaurant_id => 9, :env_type => 'Outdoor sitting'},
{:restaurant_id => 9, :env_type => 'Kid friendly'},
{:restaurant_id => 10, :env_type => 'Meet for a drink'},
{:restaurant_id => 11, :env_type => 'Group dining'},
{:restaurant_id => 11, :env_type => 'Romantic'},
{:restaurant_id => 12, :env_type => 'Meet for a drink'},
{:restaurant_id => 12, :env_type => 'Group dining'},
{:restaurant_id => 13, :env_type => 'Kid friendly'},
{:restaurant_id => 14, :env_type => 'Kid friendly'},
{:restaurant_id => 15, :env_type => 'Meet for a drink'},
{:restaurant_id => 15, :env_type => 'Group dining'},
{:restaurant_id => 16, :env_type => 'Romantic'},
{:restaurant_id => 16, :env_type => 'Meet for a drink'},
{:restaurant_id => 17, :env_type => 'Group dining'},
{:restaurant_id => 17, :env_type => 'Kid friendly'},
{:restaurant_id => 18, :env_type => 'Meet for a drink'},
{:restaurant_id => 18, :env_type => 'Group dining'},
{:restaurant_id => 19, :env_type => 'Meet for a drink'},
{:restaurant_id => 19, :env_type => 'Group dining'},
{:restaurant_id => 20, :env_type => 'Kid friendly'},
{:restaurant_id => 21, :env_type => 'Meet for a drink'},
{:restaurant_id => 21, :env_type => 'Nice view'},
{:restaurant_id => 22, :env_type => 'Kid friendly'},
{:restaurant_id => 23, :env_type => 'Outdoor sitting'},
{:restaurant_id => 24, :env_type => 'Meet for a drink'},
{:restaurant_id => 25, :env_type => 'Kid friendly'},
{:restaurant_id => 26, :env_type => 'Kid friendly'},
{:restaurant_id => 26, :env_type => 'Meet for a drink'},
{:restaurant_id => 27, :env_type => 'Group dining'},
{:restaurant_id => 27, :env_type => 'Meet for a drink'},
{:restaurant_id => 28, :env_type => 'Group dining'},
{:restaurant_id => 28, :env_type => 'Outdoor sitting'},
{:restaurant_id => 29, :env_type => 'Outdoor sitting'},
{:restaurant_id => 29, :env_type => 'Meet for a drink'},
{:restaurant_id => 30, :env_type => 'Meet for a drink'},
{:restaurant_id => 30, :env_type => 'Group dining'}

]



environments.each do |environment|
   Environment.create!(environment)
end