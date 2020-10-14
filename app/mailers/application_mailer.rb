class ApplicationMailer < ActionMailer::Base
  default from: 'example@gmail.com'
  layout 'mailer'

  add_template_helper(EmailHelper)
end
