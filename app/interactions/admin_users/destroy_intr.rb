module AdminUsers

  class DestroyIntr < ActiveInteraction::Base

    object :admin_user

    def execute
      errors.merge!(admin_user.errors) unless admin_user.destroy
      admin_user
    end
    
  end

end
