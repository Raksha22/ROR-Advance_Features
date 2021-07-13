ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation, :admin_role_id, :name

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

  form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :admin_role_id,:as => :select, collection: AdminRole.all.map{|x| [x.role, x.id]}
    end
    f.actions
  end
end
