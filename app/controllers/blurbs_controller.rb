class BlurbsController < ApplicationController

	def new
		@blurb = Blurb.new
		create
	end

	def edit
		@blurb = Blurb.find(params[:id])
	end

	def index
		@blurbs = Blurb.all 
	end

	def create
		# @user_id = current_user.id
		@blurb = Blurb.new(blurb_params)
		if @blurb.save
			redirect_to blurbs_path(@blurbs)
		else
			redirect_to :back
		end
	end

	def destroy
		@blurb = Blurb.find(params[:blurb])
		@blurb.destroy
		redirect_to(:back)
	end

	private

	def blurbs_params
		params.require(:blurb).permit(:day_id, :text)
	end





end