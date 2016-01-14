class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to users_path
      flash[:notice] = "Account creation was a great success!"
    else
      flash[:alert] = "Account could not be created."
      redirect_to users_path
    end
  end

  def show
  end



  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :avatar)
  end

end
