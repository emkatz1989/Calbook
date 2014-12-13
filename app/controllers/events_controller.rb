class EventsController < ApplicationController
	
	#GET /events/new

	def new
		@event = Event.new(event_params)
		# create
	end

	#POST /events

	def create
	  @user_id = current_user.id
	  @event = Event.new(event_params)
		if @event.save
			redirect_to day_path(@day)
		else
			redirect_to :back
		end
	end

	#PATCH/PUT /events/1

	def update
		if @event.update(event_params)
			redirect_to day_path, notice: 'Event was successfully updated.'
		else
			redirect_to :back
		end
	end

	#Get /events/1/edit
	def edit
		@event = Event.find(params[:id])
	end

    
    #GET /events

	def index
		@events = Event.all 
	end

	#GET /events/1

	def show
	end

	#DELETE /events/1

	def destroy
		@event = Event.find(params[:event])
		@event.destroy
		redirect_to(:back)
	end

	

	private

	# def set_event
	# 	@event = Event.find(params[:id])
	# end

	def event_params
		params.require(:event).permit(:day_id, :text, :start_time, :end_time, :calendar_id, :event_id, :title)
	end

end