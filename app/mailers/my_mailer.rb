class MyMailer < BaseMailer

     def send_my_mail(email)
       mail to: email, subject: "My Subject"
     end
end
