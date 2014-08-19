class UserMailer < ActionMailer::Base
  default from: "cluster.support@yale.edu"
  def incident_email(report)
    @label = report.label
    @tag_type = report.tag_type
    @description = report.description
    @cluster_email = 'cluster.support@yale.edu'
    mail(to: @cluster_email, subject: "QR Service: Student Scanned QR Code for #{@label}")
  end
end
