require 'rails_helper'



describe RestaurantController, :type => :controller do
describe "GET index" do
    it "displays the correct page" do
           get :index
    expect(response).to render_template("index")
    end
  end
end 


