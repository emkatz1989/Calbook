class EventsController < ApplicationController
	def new
		@event = Event.new
		create
	end

	def edit
		@event = Event.find(params[:id])
	end

	def index
		@events = Event.all 
	end

	def create
		@user_id = current_user.id
		@event = Event.new(event_params)
		if @event.save
			redirect_to days_path(@days)
		else
			redirect_to :back
		end
	end

	def destroy
		@event = Event.find(params[:event])
		@event.destroy
		redirect_to(:back)
	end

	private

	def events_params
		params.require(:event).permit(:day_id, :text, :start_time, :end_time, :calendar_id, :event_id, :title)
	end

end