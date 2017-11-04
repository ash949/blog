class UserRegisterationsController < Devise::RegisterationsController
  
  def create
    super
    if @user.persisted?
      UserMailer.welcome(@user.username, @user.email).deliver_now
    end
  end

  protected
  def update_resource(resource, params)
    resource.update_without_password(params)
  end
end