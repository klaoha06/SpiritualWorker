namespace :scheduler_test do
  desc "TODO"
  task perform: :environment do
    puts "Scheduler Dispatching HappyTweeter..."
    TweetWorker.perform_async()
  end

end
