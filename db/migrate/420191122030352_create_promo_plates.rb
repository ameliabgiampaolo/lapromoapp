class CreatePromoPlates < ActiveRecord::Migration[5.2]
  def change
    create_table :promo_plates do |t|
      t.references :plate, foreign_key: true
      t.references :promo, foreign_key: true

      t.timestamps
    end
  end
end
