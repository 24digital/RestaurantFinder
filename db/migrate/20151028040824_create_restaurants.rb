class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.integer :restaurantid
      t.string :title
      t.string :cuisine
      t.string :price_range
      t.timestamps null: false
    end 
  end
end
