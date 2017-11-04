class UserMailer < ApplicationMailer
  default from: 'H.ASH.shop@outlook.com'
  def notify_on_post(client_name, client_email, post_title, post_url)
    @message = "<p>
                  hi #{client_name},
                  <br>
                  <br>
                  check this article....hope you enjoy it
                  <br>
                  <a href='#{post_url}'>#{post_title}</a>
                  <br>
                  Best regards,
                  Hamza
                </p>"
    mail( from: 'H.ASH.shop@outlook.com',
          to: client_email,
          subject: "Hey #{client_name}, I have posted some new cool stuff to read.")
  end

  def welcome(client_name, client_email)
    @message = "<p>Hi #{client_name}, you have successfully signed up Hamza's Blog
                  <br>
                  <br>
                  Have a nice day :D
                </p>"
    mail( from: 'H.ASH.shop@outlook.com',
          to: client_email,
          subject: "Hi #{client_name}, Hamza's Blog welcomes you")
  end
end
