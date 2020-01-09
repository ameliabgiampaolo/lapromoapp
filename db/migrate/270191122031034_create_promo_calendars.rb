class CreatePromoCalendars < ActiveRecord::Migration[5.2]
  def change
    create_table :promo_calendars do |t|
      t.references :promo, foreign_key: true
      t.references :calendar, foreign_key: true

      t.timestamps
    end
  end
end
