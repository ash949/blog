# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  def notify_on_post
    UserMailer.notify_on_post("hamza", "hamzaashoor949@hotmail.com", 'Test title', '/posts/1').deliver_now
  end
  
  def welcome
    UserMailer.welcome("hamza", "msa2500@hotmail.com").deliver_now
  end
end
