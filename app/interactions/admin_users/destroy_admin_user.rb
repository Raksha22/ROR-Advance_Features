module AdminUsers

  class DestroyAdminUser < ActiveInteraction::Base
    string :id
    def execute
      admin_user = AdminUser.find(id)
      admin_user.destroy
    end
  end

end
