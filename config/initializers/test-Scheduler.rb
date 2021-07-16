
require 'sidekiq-scheduler'

class Test
  include Sidekiq::Worker

  def perform
    puts 'Test schedule for every minute'
  end
end