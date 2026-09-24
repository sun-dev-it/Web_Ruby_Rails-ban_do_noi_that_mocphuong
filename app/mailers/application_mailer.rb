class ApplicationMailer < ActionMailer::Base
  default from: "onboarding@resend.dev"
  #default from: ENV.fetch("MAILER_FROM_EMAIL") use domain https://resend.com/domains/add
  layout "mailer"
end