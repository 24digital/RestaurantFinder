RestaurantFinder::Application.routes.draw do
  resources :restaurant
  # map '/' to be a redirect to '/movies'
 root :to => redirect('/restaurant')

end
