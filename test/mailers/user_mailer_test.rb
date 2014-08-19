require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "incident_email" do
    # Send the email, then test that it got queued
    report = Report.new({
      :tag_type => "station",
      :description => "test description",
      :label => "STC-TEST_LABEL",
      :yale_email => "test@example.com",
    })
    email = UserMailer.incident_email(report).deliver
    assert_not ActionMailer::Base.deliveries.empty?
 
    # Test the body of the sent email contains what we expect it to
    assert_equal ['cluster.support@yale.edu'], email.from
    assert_equal ['cluster.support@yale.edu'], email.to
    assert_equal 'QR Service: Student Scanned QR Code for STC-TEST_LABEL', email.subject
    assert_equal read_fixture('incident').join, email.body.to_s
  end
end
