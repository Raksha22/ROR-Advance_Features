class AddColumnToAdminUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :admin_users, :name, :string
  end
end
