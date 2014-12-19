	class DaysController < ApplicationController
	
	def index
		@days = current_user.days
		all_days = @days.map(&:date)
		day = Date.today.beginning_of_month
		while day <= Date.today.end_of_month
			if !all_days.include? day

				# This allows us to build a new day thinger
				# And we finally ... GAF	
				new_day=Day.new(date: day)
				new_day.blurbs.build
				# new_day.blurbs.build
				new_day.events.build
				# new_day.events.build
				# new_day.image_videos.build
				new_day.image_videos.build
				@days << new_day
				puts ENV['GOOGLE_API_KEY']
			end
			day = day.next

			# google ApplicationControlleradfsadf

			# sdfa
			# @events
		end
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
			raise @day.errors.inspect
			redirect_to new_session_path
			# redirect_to :back
		end
	end

	def edit
		@day = Day.find(params[:id])
	end

	def update
	   # raise("kissmykeester!")
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
		params.require(:day).permit(:id, :user_id, :date, :events_attributes => [:id, :title, :text, :start_time, :end_time], :blurbs_attributes => [:id, :text], :image_videos_attributes => [:id, :media, :caption])
	end

end

# "day"=>{"user_id"=>"13", "day_id"=>""}, 
# "events"=>{"title"=>"a", "text"=>"a", "start_time"=>"a", "end_time"=>"a"}, 
# "blurbs"=>{"text"=>"a"}, 
# "image_videos"=>{"caption"=>"a"}