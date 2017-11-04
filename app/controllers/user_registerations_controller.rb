class UserRegisterationsController < Devise::RegisterationsController
  
  def create
    super
    if @user.persisted?
      
    end
  end
end