module AdminUsers

  class UpdateAdminUser < ActiveInteraction::Base
    object :admin_user
    string :email, :name, :admin_role_id, :password, :password_confirmation

    def execute
      unless admin_user.update(inputs.except(:admin_user))
        errors.merge!(admin_user.errors)
      end
      admin_user
    end
  end

end