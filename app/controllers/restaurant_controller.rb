class RestaurantController < ApplicationController
  def index
  
    @restaurants="Test, my value is coming from the restaurant_controller.rb"
    # can later be moved to the Restaurant model
    ordering = {:title => :asc}
    @all_environments = Restaurant.all_environments
    @all_price_ranges = Restaurant.all_price_ranges
    @selected_ranges = params[:range]  || {}
    @selected_environments = params[:environments] || session[:environments] || {}
    if @selected_environments == {}
      @selected_environments = Hash[@all_environments.map {|environment| [environment, environment]}]
    end
  
    #@restaurants = Restaurant.order(ordering)
    #logger.debug "--------------------------"
    #logger.debug @selected_environments
    
    # @environments=[]
     @environments= Environment.select(:restaurant_id).where(:env_type => @selected_environments.keys)
     if @selected_ranges == '$'
       @restaurants = Restaurant.where(:price_range => '$')
       elsif @selected_ranges == '$$'
       @restaurants = Restaurant.where(:price_range => '$$')
       elsif @selected_ranges == '$$$'
       @restaurants = Restaurant.where(:price_range => '$$$')
       else
       @restaurants = Restaurant.where(:id => @environments)
     end
#:id => @environments
 
  end
  
  def show
    id = params[:id] # retrieve movie ID from URI route
    @restaurant = Restaurant.find(id) # look up restaurants by unique ID
    # will render app/views/movies/show.<extension> by default
    #------------------------------------------------------------
    # this section probably needs work
    #------------------------------------------------------------
  end
  
  def new
  end
  
  def create
  end
  
  def destroy
  end
  
  def edit
  end
  
  def update
  end
  
end
