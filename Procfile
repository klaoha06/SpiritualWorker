web: bundle exec puma -t 5:5 -p ${PORT:-3000} -e ${RACK_ENV:-development}
happytweeter: bundle exec sidekiq -e production -c 3