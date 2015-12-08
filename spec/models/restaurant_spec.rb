require 'rails_helper'

RSpec.describe Restaurant, type: :model do

    describe "Restaurant.all_environments" do
        it "should return a list of all environment type options" do
             all_environments_array = %w(Outdoor\ sitting Casual Romantic Kid\ friendly Meet\ for\ a\ drink Group\ dining Nice\ view)
            expect(Restaurant.all_environments).to eq(all_environments_array)
        end
    end
      
    describe "Restaurant.all_cuisines" do
        it "should return a list of all cuisine type options" do
            all_cuisines_array = %w(Sushi Southern\ American Steakhouse Pizza American Tex-Mex Seafood Italian Asian)
            expect(Restaurant.all_cuisines).to eq(all_cuisines_array)
        end
    end
    
    describe "Restaurant.all_price_ranges" do
        it "should return a list of all price range options" do
            all_price_ranges_array = %w($ $$ $$$ All)
            expect(Restaurant.all_price_ranges).to eq(all_price_ranges_array)
        end
    end

end