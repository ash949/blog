class UserRegisterationsController < Devise::RegisterationsController
  
  def create
    super
    if @user.persisted?
      
    end
  end

  protected

  def sign_up_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end