class UserMailer < ActionMailer::Base
  default from: "cluster.support@yale.edu"
  def incident_email(report)
    @report = report
    @cluster_email = 'cluster.support@yale.edu'
    mail(to: @cluster_email, subject: "QR Service: Student Scanned QR Code for #{@report.label}")
  end
end
