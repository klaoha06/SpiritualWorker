class TweetWorker
  include Sidekiq::Worker
  # sidekiq_options retry: false

  def perform(*args)
    puts "hello"
    time_now = Time.now.to_s
    message = String.new
    message = "HappyTweeter is tweeting at #{time_now}"
    puts message

    TwitterAPI.new.client.update(message)
  end
end
