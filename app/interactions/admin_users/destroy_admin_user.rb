module AdminUsers

	class DestroyAdminUser < ActiveInteraction::Base
		string :id
		def execute
			admin_user = AdminUser.find(id)
			admin_user = admin_user.destroy
			admin_user
		end
	end

end
