class UsersController < ApplicationController

  def new
  	@user = User.new
  end

  def index
  	@users = User.all
  end

  def create
  	@user = User.new(user_params)
  	  if @user.save
  	  	session[:user_id]
  	  	redirect_to entries_path(@entries)
  	  else 
  	  	redirect_to :back
  	  end
  end

  def update
  	@user.update_attributes(user_params)
  end

  def destroy
  	user.destroy
  end

  private

  def set_user
  	@user = User.find(params[:id])
  end

  def user_params
  	params.require(:user).permit(:fullname, :username, :password, :password_confirmation)
  end

end