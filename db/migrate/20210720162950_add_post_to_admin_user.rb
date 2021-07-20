class AddPostToAdminUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :admin_user
  end
end
