class CreatePromos < ActiveRecord::Migration[5.2]
  def change
    create_table :promos do |t|
      t.references :restaurant, foreign_key: true
      t.string :name
      t.string :promo_type
      t.text :description
      t.boolean :yumis

      t.timestamps
    end
  end
end
