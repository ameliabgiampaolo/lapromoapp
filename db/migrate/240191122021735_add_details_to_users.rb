class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_name, :string
    add_column :users, :phone, :string
    add_column :users, :uid, :string
    add_column :users, :provider, :string
    add_column :users, :invitation_token, :string
    add_column :users, :is_google, :boolean
    add_column :users, :approved, :boolean, default: true
    add_reference :users, :role, foreign_key: true
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
