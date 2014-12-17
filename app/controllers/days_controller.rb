	class DaysController < ApplicationController
	
	def index
		@days = current_user.days

		# This allows us to build a new day thinger
		# But ... we DGAF
		@day=Day.new
		@day.blurbs.build
		@day.blurbs.build
		@day.events.build
		@day.events.build
		@day.image_videos.build
		@day.image_videos.build

	end

	def new
		@day = Day.new
		# create
	end
	
	def create
		# raise(params.inspect)
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
		params.require(:day).permit(:id, :user_id, :date, :events_attributes => [:id, :title, :text, :start_time, :end_time])
	end

end

# "day"=>{"user_id"=>"13", "day_id"=>""}, 
# "events"=>{"title"=>"a", "text"=>"a", "start_time"=>"a", "end_time"=>"a"}, 
# "blurbs"=>{"text"=>"a"}, 
# "image_videos"=>{"caption"=>"a"}