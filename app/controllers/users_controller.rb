class UsersController < ApplicationController
  # New user method
  def new
    @user = User.new
  end

  # Create user method
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_user_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  # User params method
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
