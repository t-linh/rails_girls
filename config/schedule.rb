set :environment, "development"

set :environment, "development"

set :output, {error: "log/cron_error_log.log", standard: "log/cron_log.log"}

# Learn more: http://github.com/javan/whenever
every 1.minute do
  rake "chatwork:send_message"
end
