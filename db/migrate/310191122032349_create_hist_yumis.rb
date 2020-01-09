class CreateHistYumis < ActiveRecord::Migration[5.2]
  def change
    create_table :hist_yumis do |t|
      t.string :type_hist_yumis
      t.integer :quantity
      t.references :diner, foreign_key: true

      t.timestamps
    end
  end
end
