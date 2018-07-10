class HappyTweeterWorker
  include Sidekiq::Worker

  def perform(content, specific_time, interval, specific_day, random)
    # Sanitize Input
    TwitterAPI.new.client.update(content)

    # Return Callback
  end

end