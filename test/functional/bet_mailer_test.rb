require 'test_helper'

class BetMailerTest < ActionMailer::TestCase
  test "bet_reminder" do
    mail = BetMailer.bet_reminder
    assert_equal "Bet reminder", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
