class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :restaurant_id
      t.string :rating
      t.string :body

      t.timestamps
    end
  end
end
