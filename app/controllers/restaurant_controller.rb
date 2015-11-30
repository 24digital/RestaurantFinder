class RestaurantController < ApplicationController
  def index
  
    ordering = {:title => :asc}
    @all_environments = Restaurant.all_environments
    @all_cuisines = Restaurant.all_cuisines
    @all_price_ranges = Restaurant.all_price_ranges
    @selected_ranges = params[:range]  || ""
    #changed from {} to ""
    @selected_environments = params[:environments] || session[:environments] || {}
    @selected_cuisines = params[:cuisines] || session[:cuisines] || []
    if @selected_environments == {}
      @selected_environments = Hash[@all_environments.map {|environment| [environment, environment]}]
    end
    if @selected_cuisines == []
      @selected_cuisines = @all_cuisines
    end
    if @selected_ranges == ""
      @selected_ranges = "All"
    end
    
    if params[:environments] != session[:environments] or params[:cuisines] != session[:cuisines] or params[:range] != session[:range]
      session[:environments] = @selected_environments
      session[:cuisines] = @selected_cuisines
      session[:range] = @selected_ranges
      redirect_to :environments => @selected_environments, :cuisines => @selected_cuisines, :range => @selected_ranges and return
    end

    #@restaurants = Restaurant.order(ordering)
    #logger.debug "--------------------------"
    #logger.debug @selected_environments
    
    @environments=[]
    @environments = Environment.select(:restaurant_id).where(:env_type => @selected_environments.keys)
    #@restaurants = Restaurant.where(:cuisine => @selected_cuisines).where(:id => @environments).order(ordering)

    if @selected_ranges == '$'
      @restaurants = Restaurant.where(:price_range => '$').where(:cuisine => @selected_cuisines).where(:id => @environments).order(ordering)
    elsif @selected_ranges == '$$'
      @restaurants = Restaurant.where(:price_range => '$$').where(:cuisine => @selected_cuisines).where(:id => @environments).order(ordering)
    elsif @selected_ranges == '$$$'
      @restaurants = Restaurant.where(:price_range => '$$$').where(:cuisine => @selected_cuisines).where(:id => @environments).order(ordering)
    else
       @restaurants = Restaurant.where(:cuisine => @selected_cuisines).where(:id => @environments).order(ordering)
    end
 
  end
  
  def show
    id = params[:id] # retrieve movie ID from URI route
    @restaurant = Restaurant.find(id) # look up restaurants by unique ID
   
      Review.create!(id: id,user_name: params[:name],review: params[:description])
      @reviews = Review.all
      
      
  end
  
  def new
  end
  
  def create
      redirect_to restaurant_index_path
  end
  
  def destroy
  end
  
  def edit
  end
  
  def update
  end
  
end
