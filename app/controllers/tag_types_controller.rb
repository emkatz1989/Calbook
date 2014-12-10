class TagTypesController < ApplicationController

	def new
		@tag_type = Tag_type.new
		create
	end

	def edit
		@tag_type = Tag_type.find(params[:id])
	end

	def index
		@tag_types = Tag_types.all 
	end

	def create
		@user_id = current_user.id
		@tag_type = Tag_type.new(tag_type_params)
		if @tag_type.save
			redirect_to days_path(@days)
		else
			redirect_to :back
		end
	end

	def destroy
		@tag_type = Tag_type.find(params[:tag_type])
		@tag_type.destroy
		redirect_to(:back)
	end

	private

	def tag_type_params
		params.require(:tag_type).permit(:tag_id, :taggable_id, :taggable_type)
	end

end