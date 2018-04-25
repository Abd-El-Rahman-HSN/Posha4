class AddRoleToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :admin, :boolean
    add_column :users, :editor, :boolean
    add_column :users, :datascout , :boolean
    add_column :users, :journalist, :boolean
    add_column :users, :PaidMember , :boolean
  end
end
