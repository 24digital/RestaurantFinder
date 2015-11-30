class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :user_name
      t.string :review
      t.integer :restaurant

      t.timestamps null: false
    end
  end
end
