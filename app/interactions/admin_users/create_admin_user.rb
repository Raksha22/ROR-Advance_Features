module AdminUsers

	class CreateAdminUser < ActiveInteraction::Base
		byebug
		string :email, :name, :admin_role_id, :password

		def execute
			admin_user = AdminUser.create!(email: email, name: name, admin_role_id: admin_role_id, password: password)
			admin_user
		end
	end
end