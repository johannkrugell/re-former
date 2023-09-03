class UsersController < ApplicationController
  # Index user method
  def index
    @users = User.all
  end

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

  # Edit user method
  def edit
    @user = User.find(params[:id])
  end

  # Update user method
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to edit_user_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  # User params method
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
