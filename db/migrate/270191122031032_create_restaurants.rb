class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :map_location
      t.string :zip_code
      t.integer :capacity
      t.text :description
      t.string :rif
      t.time :start_time
      t.time :end_time
      t.boolean :particular
      t.references :place, foreign_key: true
      t.references :user, foreign_hey: true
      t.timestamps
    end
  end
end
