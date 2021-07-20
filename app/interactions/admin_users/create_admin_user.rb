module AdminUsers

  class CreateAdminUser < ActiveInteraction::Base
    string :email, :name, :admin_role_id, :password, :password_confirmation
    def execute
      admin_user = AdminUser.create!(email: email, name: name, admin_role_id: admin_role_id, password: password, password_confirmation: password_confirmation)
      admin_user
    end
  end

end
