class SpiritualTweeterJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Sanitize Input
    TwitterAPI.new.client.update(*args)

    # Return Callback
  end

end