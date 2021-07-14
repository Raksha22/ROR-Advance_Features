class PostWorker
  include Sidekiq::Worker

  def perform(type, params = {})
  byebug
    params = eval params rescue params.with_indifferent_access
    begin
      if type =='create_post'
        @post = Post.create(title: "job")
        puts "Post created Succesfully"
      end
    rescue => e
      on_demand_logger = Logger.new("#{Rails.root}/log/sidekiq_errors.log")
      log = { class: self.class, time: Time.now.utc, exception: e, backtrace: e.backtrace.first }
      on_demand_logger.info(log)
      on_demand_logger.info('---------------------------------------------')
    end
  end
end
