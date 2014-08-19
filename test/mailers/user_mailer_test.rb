require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "incident_email" do
    # Send the email, then test that it got queued
    email = UserMailer.incident_email('STC-0001').deliver
    assert_not ActionMailer::Base.deliveries.empty?
 
    # Test the body of the sent email contains what we expect it to
    assert_equal ['from@example.com'], email.from
    assert_equal ['mlin4589@gmail.com'], email.to
    assert_equal 'Welcome to My Awesome Site', email.subject
    assert_equal read_fixture('incident').join, email.body.to_s
  end
end
