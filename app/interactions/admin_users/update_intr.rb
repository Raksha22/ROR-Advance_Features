module AdminUsers

  class UpdateIntr < ActiveInteraction::Base

    object :admin_user
    string :email, :name, :admin_role_id, :password, :password_confirmation

    def execute
      errors.merge!(admin_user.errors) unless admin_user.update(inputs.except(:admin_user))
      admin_user
    end
    
  end

end