class AddAdminUserToAdminRole < ActiveRecord::Migration[6.1]
  def change
    add_reference :admin_roles, :admin_user
  end
end
