class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :kitchen_rating
      t.integer :ambient_rating
      t.integer :service_rating
      t.text :description
      t.references :reservation, foreign_key: true

      t.timestamps
    end
  end
end
