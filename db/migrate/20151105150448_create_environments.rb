class CreateEnvironments < ActiveRecord::Migration
  def change
    create_table :environments do |t|
       t.string :env_type
       t.integer :restaurant_id
     t.timestamps null: false
    end
    
  end
end

