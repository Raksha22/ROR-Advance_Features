class RenameRoleToNameInAdminRoles < ActiveRecord::Migration[6.1]
  def change
    rename_column :admin_roles, :role, :name
  end
end
