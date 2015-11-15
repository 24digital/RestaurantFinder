require 'spec_helper'



.describe Restaurant do
  describe "GET index" do
    it "assigns @title" do
      @restaurants = Restaurant
  
      expect(@restaurants).to be_an_instance_of(Restaurant)
      expect(@restaurants.title).to eq('test')
  #    expect(@hangpersonGame.guesses).to eq('')
   #   expect(@hangpersonGame.wrong_guesses).to eq('')
    end


  
end
end 