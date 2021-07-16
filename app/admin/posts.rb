ActiveAdmin.register Post do
  permit_params :title, :description, :published, :rating

  config.filters = true

  index do
    column :id
    column :title
    column :description
    column :published?
    column :created_at
    actions defaults: false do |post|
      item "View", admin_post_path(post), class: 'member_link'
      item 'Edit', edit_admin_post_path(post), class: 'member_link'
      item 'Delete', admin_post_path(post), :method => :delete
    end
  end

  # show do
  #   render partial: 'admin/posts/show'
  # end

  filter :title
  filter :published

  controller do
    def create
      @post = Post.new(permitted_params[:post])

      if @post.save
        redirect_to admin_posts_path
      end
    end
    def show
      post = Post.where(id: permitted_params[:id]).select(:id, :title, :rating)
      PostWorker.perform_async(post.first.title, post.first.rating)
    end

  end

  sidebar :actions do
    button_to "Update post", update_posts_admin_posts_path, method: :post
  end

  collection_action :update_posts, method: :post do
    redirect_to admin_posts_path, :notice => "Updated All posts"
  end

end
