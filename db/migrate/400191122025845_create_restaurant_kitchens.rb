class CreateRestaurantKitchens < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurant_kitchens do |t|
      t.references :restaurant, foreign_key: true
      t.references :kitchen_type, foreign_key: true

      t.timestamps
    end
  end
end
