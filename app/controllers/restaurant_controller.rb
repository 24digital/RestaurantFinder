class RestaurantController < ApplicationController
  def index
    @restaurants="Test, my value is coming from the restaurant_controller.rb"
    # can later be moved to the Restaurant model
    ordering = {:release_date => :asc}
    @all_environments = Restaurant.all_environments
    @selected_environments = params[:environments] || session[:environments] || {}
    if @selected_environments == {}
      @selected_environments = Hash[@all_environments.map {|environment| [environment, environment]}]
    end
    if params[:environments] != session[:environments]
      session[:environments] = @selected_environments
      redirect_to :environments => @selected_environments and return
    end
    @restaurants = Restaurant.order(ordering)
    #logger.debug "--------------------------"
    #logger.debug @selected_environments
  end
  
  def show
    id = params[:id] # retrieve movie ID from URI route
    @movie = Restaurant.find(id) # look up restaurants by unique ID
    # will render app/views/movies/show.<extension> by default
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
