module AdminUsers

  class DestroyAdminUser < ActiveInteraction::Base
    object :admin_user

    def execute
      unless admin_user.destroy
        errors.merge!(admin_user.errors)
      end

      admin_user
    end
  end

end
