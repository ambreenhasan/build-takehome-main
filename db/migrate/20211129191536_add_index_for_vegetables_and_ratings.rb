class AddIndexForVegetablesAndRatings < ActiveRecord::Migration[6.0]
  def change
    add_index :ratings, :vegetable_id
  end
end
