desc "This task is called by the Heroku scheduler add-on"
task :update_feed => :environment do
  puts "Scheduler Dispatching HappyTweeter at #{Time.now.to_s} ..."
  TweetWorker.perform_async()
end

task :send_reminders => :environment do
  # User.send_reminders
end