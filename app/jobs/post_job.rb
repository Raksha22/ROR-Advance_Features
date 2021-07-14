class PostJob < ApplicationJob
  queue_as :default

  def perform
    @post = Post.create(title: "job")
    puts "Post created Succesfully"
  end
end