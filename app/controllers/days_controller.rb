	class DaysController < ApplicationController
	def new
		@day = Day.new
		create
	end

	def edit
		@day = Day.find(params[:id])
	end

	def index
		@days = Day.all
		@event = Event.new
		@blurb= Blurb.new
		@image_video= ImageVideo.new

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
