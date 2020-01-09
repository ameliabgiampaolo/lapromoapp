class CreateInvitations < ActiveRecord::Migration[5.2]
  def change
    create_table :invitations do |t|
      t.string :email
      t.string :status
      t.references :hist_yumis, foreign_key: true
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
