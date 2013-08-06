desc "This task is called by the Heroku scheduler add-on"
task :send_bets => :environment do
  puts "Sending bets.."
  Bet.all.each {|bet| bet.check_bet(bet)}
  puts "done."
end
