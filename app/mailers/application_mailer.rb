class ApplicationMailer < ActionMailer::Base
  default from: "Mộc Phương <no-reply@mocphuong.vn>"
  #default from: ENV.fetch("MAILER_FROM_EMAIL") use domain https://resend.com/domains/add
  layout "mailer"
end