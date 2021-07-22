module AdminUsers

  class CreateAdminUser < ActiveInteraction::Base

    string :email, :name, :admin_role_id, :password, :password_confirmation

    def execute
      admin_user = AdminUser.new(inputs)
      
      errors.merge!(admin_user.errors) unless admin_user.save
      admin_user
    end

  end

end
