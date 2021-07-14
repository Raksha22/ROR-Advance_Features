class PostJob < ApplicationJob

  def perform
  byebug
    PostWorker.set(queue: 'post create').perform_at(1.seconds.from_now, 'create_post')
  end
end





