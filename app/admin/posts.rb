ActiveAdmin.register Post do
  permit_params :title, :description

  config.filters = true

  index do
    column :id
    column :title
    column :description
    column :published_at
    column :created_at
    actions defaults: false do |post|
      item "View", admin_post_path(post), class: 'member_link'
      item 'Edit', edit_admin_post_path(post), class: 'member_link'
      item 'Delete', admin_post_path(post), :method => :delete
    end
  end

  show do
    render partial: 'admin/posts/show'
  end

  filter :title

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
