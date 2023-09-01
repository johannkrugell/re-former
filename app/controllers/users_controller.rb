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
      render :new
    end
  end
end
