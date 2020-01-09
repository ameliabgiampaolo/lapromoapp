class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :photo
      t.references :restaurant, foreign_key: true
      t.references :place, foreign_key: true
      t.timestamps
    end
  end
end
