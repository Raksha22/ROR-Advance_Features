ActiveAdmin.register AdminUser do
  # permit_params :email, :password, :password_confirmation, :admin_role_id, :name

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :created_at
    column :updated_at
    actions
  end

  filter :email
  filter :created_at
  filter :name_or_email_cont, as: :string, label: "Name $ Email"

  controller do

    def create
      result = AdminUsers::CreateAdminUser.run(admin_user_params)
      if result.valid?
        redirect_to admin_admin_users_path
      else
        redirect_to new_admin_admin_user_path
        flash[:alert] = "Please fill correct details with valid formats"
      end
    end

    def update
      admin_user = AdminUser.find(params[:id])
      result = AdminUsers::UpdateAdminUser.run(admin_user_params.merge(admin_user: admin_user))
      if result.valid?
        redirect_to admin_admin_users_path
      else
        redirect_to edit_admin_admin_user_path
        flash[:alert] = "Please fill correct details with valid formats"
      end
    end
    
    def destroy
      result = AdminUsers::DestroyAdminUser.run(params)
      if result.valid?
        redirect_to admin_admin_users_path
      end
    end

    private
    def admin_user_params
      params.require(:admin_user).permit(:email, :password, :password_confirmation, :admin_role_id, :name)
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :admin_role_id,:as => :select, collection: AdminRole.all.map{|admin_role| [admin_role.name, admin_role.id]}
    end
    f.actions
  end
end
