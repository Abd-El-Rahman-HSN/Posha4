class AddDateUserToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :Full_Name, :string
    add_column :users, :photo, :string
    add_column :users, :Country, :string
    add_column :users, :City, :string
    add_column :users, :SocialMedia, :string
    add_column :users, :About, :string
  end
end
