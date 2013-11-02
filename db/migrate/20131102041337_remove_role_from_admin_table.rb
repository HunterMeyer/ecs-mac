class RemoveRoleFromAdminTable < ActiveRecord::Migration
  def change
  	remove_column :admins, :role
  end
end
