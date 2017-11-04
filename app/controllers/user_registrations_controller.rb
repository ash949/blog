class UserRegistrationsController < Devise::RegistrationsController  
  def create
    super
    if @user.persisted?
      UserMailer.welcome(@user.username, @user.email).deliver_now
    end
  end
end