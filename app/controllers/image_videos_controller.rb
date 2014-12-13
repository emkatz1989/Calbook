class ImageVideosController < ApplicationController
	def new
		@image_video = Image_video.new
		create
	end

	def edit
		@image_video = Image_video.find(params[:id])
	end

	def index
		@image_videos = Image_video.all 
	end

	def create
		@user_id = current_user.id
		@image_video = Image_video.new(image_video_params)
		if @image_video.save
			redirect_to days_path(@days)
		else
			redirect_to :back
		end
	end

	def destroy
		@image_video = Image_video.find(params[:image_video])
		@image_video.destroy
		redirect_to(:back)
	end

	private

	def image_video_params
		params.require(:image_video).permit(:day_id, :caption)
	end

end