class RemoveAdminFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :admin 
  end
end
