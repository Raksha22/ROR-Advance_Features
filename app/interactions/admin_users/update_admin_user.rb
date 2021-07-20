module AdminUsers

  class UpdateAdminUser < ActiveInteraction::Base
    string :id
    hash :admin_user do
      string :email, :name, :admin_role_id, :password, :password_confirmation
    end

    def execute
      admin_user_result = AdminUser.find(id)
      admin_user_result.update(admin_user)
    end
  end

end