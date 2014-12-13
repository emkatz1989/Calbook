class SessionsController < ApplicationController
	def new
		@user = User.new
		@is_login = true
	end

	def create
		#u = User.where(params[:user][:email]).first
		u = User.find_by_email(params[:email])
		if u && u.authenticate(params[:user][:password])
			session[:user_id] = u.id.to_s
			  redirect_to root_url
	    else
	    	#go back to login page
	    	flash[:notice] = "Invalid Input"
	    	redirect_to root_url
	    end
	end

	def destroy
		reset_session
		redirect_to root_url
	end
end
