class TweetWorker
  include Sidekiq::Worker

  def perform(*args)
    # Do something
    puts 'hello test test'
  end
end
