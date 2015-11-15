require 'rails_helper'



describe RestaurantController, :type => :controller do
describe "GET index" do
    it "does something" do
           get :index
    expect(response).to render_template("index")
    end
  end
end 


