require 'test_helper'

class ReservaMailerTest < ActionMailer::TestCase
  test "new_reservation" do
    mail = ReservaMailer.new_reservation
    assert_equal "New reservation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
