class PostJob < ApplicationJob

  def perform(params)
    Post.create!(params)
  end
end





