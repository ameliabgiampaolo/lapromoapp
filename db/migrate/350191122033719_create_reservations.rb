class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.datetime :reservation_date
      t.integer :people_num
      t.string :status
      t.references :promo, foreign_key: true
      t.references :hist_yumi, foreign_key: true
      t.references :restaurant, foreign_key: true
      t.references :diner, foreign_key: true

      t.timestamps
    end
  end
end
