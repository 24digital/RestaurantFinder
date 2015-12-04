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

end