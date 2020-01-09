class CreateHistSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :hist_searches do |t|
      t.string :message
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
