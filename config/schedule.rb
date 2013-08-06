set :output, 'log/cron.log'

every :hour do
	runner "Bet.all.each {|bet| bet.check_bet(bet)}", :environment => 'development'
end 


