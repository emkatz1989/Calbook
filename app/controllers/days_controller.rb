	class DaysController < ApplicationController
	
	def index
		day = Date.today.beginning_of_month
		@days = current_user.days
		# @days = Day.all
		all_days = @days.map(&:date)
		
		 while day <= Date.today.end_of_month
		   if !all_days.include? day

		# 		# This allows us to build a new day modal	
		 		new_day=Day.new(date: day)
		 		new_day.blurbs.build
		# 		# new_day.blurbs.build
		# 		#new_day.events.build
		# 		# new_day.image_videos.build
		 		new_day.image_videos.build
		 		@days << new_day
		# 		puts ENV['GOOGLE_API_KEY']
		 	end
		 	day = day.next

		 end
	end

	def new
		@user_id = current_user.id
		@day = Day.new(day_params)
		create
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
		params.require(:day).permit(:id, :user_id, :date, :events_attributes => [:id, :title, :text, :start_time, :end_time], :blurbs_attributes => [:id, :text], :image_videos_attributes => [:id, :day_id, :user_id, :media, :caption])
	end

end
