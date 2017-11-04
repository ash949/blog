class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :destroy]

  load_and_authorize_resource
  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def update
    updated = false
    update_params = user_params
    if( params[:user][:password].blank? )
      updated = @user.update_without_password(user_params_no_password)
    else
      updated = @user.update(user_params)
    end

    if updated
      sign_in(@user, :bypass => true)
      redirect_to @user, notice: 'User has successfully been updated'
    else
      redirect_to @user, flash: { error: @user.errors.full_messages }
    end
  end

  def destroy
    @user.destroy
    redirect_to User.all, notice: 'User has successfully DESTROOOYED'
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    if current_user.admin?
      params.require(:user).permit(:username, :email, :password, :password_confirmation, :admin)
    else
      params.require(:user).permit(:username, :password, :password_confirmation)
    end
  end

  def user_params_no_password
    if current_user.admin?
      params.require(:user).permit(:username, :email, :admin)
    else
      params.require(:user).permit(:username)
    end
  end
end
