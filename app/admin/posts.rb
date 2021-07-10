ActiveAdmin.register Post do
  permit_params :title, :description

  config.filters = false

  # or
  #
  # permit_params do
  #   permitted = [:title, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
