class Bet < ActiveRecord::Base
  attr_accessible :details, :email, :name, :reminder, :sent

  validates_presence_of :name, :email

  # Sends user a reminder if current_date is equal to the reminder date of the bet
  def check_bet(bet)
  	current_date = Time.now.strftime("%Y-%m-%d").to_s
    #@bets = Bet.all
    #@bets.each do |bet|
    BetMailer.bet_reminder(bet).deliver and bet.sent = true and bet.save! if bet.reminder.to_s == current_date
    #end 
  end
  
end
