	class DaysController < ApplicationController
	
	def index
		@days = Day.all
		# event = Event.new
		# events= Event.all
		# blurb= Blurb.new
		# blurbs= Blurb.all
		# image_video= ImageVideo.new
		# image_videos= ImageVideo.all
		@day=Day.new
		
	end

	def new
		@day = Day.new
		# create
	end
	
	def create
		@user_id = current_user.id
		@day = Day.new(day_params)
		if @day.save
			redirect_to days_path(@days)
		else
			redirect_to :back
		end
	end

	def edit
		@day = Day.find(params[:id])
	end

	def update
	   @day = Day.find(params[:id])
	    if @day.update(day_params)
	      redirect_to :back
	    else
	      render 'edit'
	    end
  	end

	def destroy
		@day = Day.find(params[:day])
		@day.destroy
		redirect_to(:back)
	end

	private

	def day_params
		params.require(:day).permit(:user_id, :date)
	end

end
