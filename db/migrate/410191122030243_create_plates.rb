class CreatePlates < ActiveRecord::Migration[5.2]
  def change
    create_table :plates do |t|
      t.string :name
      t.text :description
      t.float :price
      t.references :menu_type, foreign_key: true

      t.timestamps
    end
  end
end
