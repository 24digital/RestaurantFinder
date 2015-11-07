class RestaurantController < ApplicationController
  def index
    @restaurants="Test, my value is coming from the restaurant_controller.rb"
    # can later be moved to the Restaurant model
    ordering = {:title => :asc}
    @all_environments = Restaurant.all_environments
    @all_cuisines = Restaurant.all_cuisines
    @all_price_ranges = Restaurant.all_price_ranges
    @selected_ranges = params[:range]  || {}
    @selected_environments = params[:environments] || session[:environments] || {}
    @selected_cuisines = params[:cuisines] || session[:cuisines] || []
    if @selected_environments == {}
      @selected_environments = Hash[@all_environments.map {|environment| [environment, environment]}]
    end
    if @selected_cuisines == []
      @selected_cuisines = @all_cuisines
    end
    
    if params[:environments] != session[:environments] or params[:cuisines] != session[:cuisines]
      session[:environments] = @selected_environments
      session[:cuisines] = @selected_cuisines
      redirect_to :environments => @selected_environments, :cuisines => @selected_cuisines and return
    end
    

    #@restaurants = Restaurant.order(ordering)
    #logger.debug "--------------------------"
    #logger.debug @selected_environments
    
    @environments=[]
    @environments = Environment.select(:restaurant_id).where(:env_type => @selected_environments.keys)
    @restaurants = Restaurant.where(:cuisine => @selected_cuisines).where(:id => @environments).order(ordering)

    #if @selected_ranges == '$'
    #   @restaurants = Restaurant.where(:price_range => '$')
    #elsif @selected_ranges == '$$'
    #   @restaurants = Restaurant.where(:price_range => '$$')
    #elsif @selected_ranges == '$$$'
    #   @restaurants = Restaurant.where(:price_range => '$$$')
    #else
    #   @restaurants = Restaurant.where(:id => @environments)
    #end
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
