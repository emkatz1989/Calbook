class TagsController < ApplicationController

	def new
		@tag = Tag.new
		create
	end

	def edit
		@tag = Tag.find(params[:id])
	end

	def index
		@tags = Tag.all 
	end

	def create
		@user_id = current_user.id
		@tag = Tag.new(tag_params)
		if @tag.save
			redirect_to days_path(@days)
		else
			redirect_to :back
		end
	end

	def destroy
		@tag = Tag.find(params[:tag])
		@tag.destroy
		redirect_to(:back)
	end

	private

	def tag_params
		params.require(:tag).permit(:name)
	end

end