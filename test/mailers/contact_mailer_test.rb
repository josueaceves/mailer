require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "first_touch" do
    mail = ContactMailer.first_touch
    assert_equal "First touch", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
