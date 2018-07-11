class HappyTweeterWorker
  include Sidekiq::Worker

  def perform(*args)
    # Sanitize Input
    TwitterAPI.new.client.update(*args)

    # Return Callback
  end

end