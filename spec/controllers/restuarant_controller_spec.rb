require 'rails_helper'

describe RestaurantController, :type => :controller do

  
describe "GET index" do
    it "displays the correct page" do
           get :index
    expect(response).to render_template("index")
    end
  end
  
describe "GET show" do
    it "assigns the requested restaurant as @restaurant" do
        @restaurant= double('fake restaurant', :id => '3')
        expect(Restaurant).to receive(:find).with("3").and_return(@restaurant) 
       get :show, :id => "3"
       expect(response).to render_template("show")
     
    end
  end 
  
  
describe "POST reset" do
    it "tests the functionality of the reset button" do
        @selected_cuisines = ["Southern American", "Steakhouse"]
        @selected_ranges = "$$$"
        @selected_environments = {"Outdoor sitting"=>"1", "Group dining"=>"1"}
        post :reset
        expect(response).to redirect_to(root_path)
        expect(@selected_cuisines).to eq(Restaurant.all_cuisines)
        expect(@selected_ranges).to eq("All")
        expect(@selected_environments).to eq(Hash[@all_environments.map {|environment| [environment, environment]}])
     
    end
  end 

end