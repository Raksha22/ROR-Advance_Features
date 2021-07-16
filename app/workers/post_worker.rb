class PostWorker
  include Sidekiq::Worker

  def perform(title, sec)
    begin
    puts "hello #{title}, going to sleep for #{sec}"
    sleep(sec)
    puts "it was quite"
    rescue => e
      on_demand_logger = Logger.new("#{Rails.root}/log/sidekiq_errors.log")
      log = { class: self.class, time: Time.now.utc, exception: e, backtrace: e.backtrace.first }
      on_demand_logger.info(log)
      on_demand_logger.info('---------------------------------------------')
    end
  end
end
