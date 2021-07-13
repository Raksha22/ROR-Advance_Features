class AddAdminRoleToAdminUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :admin_users, :admin_role
  end
end
