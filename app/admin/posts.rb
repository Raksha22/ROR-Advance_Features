ActiveAdmin.register Post do
  permit_params :title, :description

  config.filters = false

  controller do
    def create
      @post = Post.new(permitted_params[:post])

      if @post.save
        redirect_to admin_posts_path
      end
    end
  end
  # or
  #
  # permit_params do
  #   permitted = [:title, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
