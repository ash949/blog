class UserRegistrationsController < Devise::RegistrationsController  
  def create
    super
    if @user.persisted?
      UserMailer.welcome(@user.username, @user.email).deliver_now
    end
  end
  
  def after_update_path_for(resource)
    notice = "Account succesfully updated"
    edit_user_registration_path
  end
end