class SpiritualTweeterJob < ApplicationJob
  queue_as :default

  def perform(content, specific_time, interval, specific_day, random, )
    # Sanitize Input
    TwitterAPI.new.client.update(content)

    # Return Callback
  end

end