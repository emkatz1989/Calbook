class EntriesController < ApplicationController
	def new
		@entry = Entry.new
		create
	end

	def edit
		@entry = Entry.find(params[:id])
	end

	def index
		@entries = Entry.all 
	end

	def create
		@user_id = current_user.id
		@entry = Entry.new(entry_params)
		if @entry.save
			redirect_to entries_path(@entries)
		else
			redirect_to :back
		end
	end

	def destroy
		@entry = Entry.find(params[:entry])
		@entry.destroy
		redirect_to(:back)
	end

	private

	def entries_params
		params.require(:entry).permit(:user_id,:reminder, :image, :video, :text)
	end

end
