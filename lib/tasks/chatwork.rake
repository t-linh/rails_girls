namespace :chatwork do
  desc "Send message every 5 mininutes"
  task send_message: :environment do
    cw = ChatworkService.new
    cw.send_info 83393693
  end
end
