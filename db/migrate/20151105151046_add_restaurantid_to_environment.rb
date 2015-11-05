class AddRestaurantidToEnvironment < ActiveRecord::Migration
  def change
     change_table :environments do |t|
      t.belongs_to :restaurants
    end
  end
end


