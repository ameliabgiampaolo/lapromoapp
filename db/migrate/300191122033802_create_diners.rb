class CreateDiners < ActiveRecord::Migration[5.2]
  def change
    create_table :diners do |t|
      t.string :name
      t.string :last_name
      t.boolean :place_notif
      t.boolean :favorite_notif
      t.float :start_price
      t.float :end_price
      t.string :identity_card
      t.string :gender
      t.date :birth_date
      t.references :user, foreign_key: true
      t.references :place, foreign_key: true
      t.timestamps
    end
  end
end
