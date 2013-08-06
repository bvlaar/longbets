class BetMailer < ActionMailer::Base
  default from: "from@example.com"

  def bet_reminder(bet)
    @bet = bet

    mail to: bet.email, subject: bet.name + " Reminder"
  end
end
