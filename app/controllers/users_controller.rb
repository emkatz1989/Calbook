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
  	  	session[:user_id]=@user.id
  	  	redirect_to days_path(@days)
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
  	params.require(:user).permit(:fullname, :email, :password, :password_confirmation)
  end

end