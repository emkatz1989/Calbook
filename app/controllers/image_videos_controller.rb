class ImageVideosController < ApplicationController
	def new
		@image_video = ImageVideo.new
		create
	end

	def edit
		@image_video = ImageVideo.find(params[:id])
	end

	def index
		@image_videos = ImageVideo.all 
	end

	def create
		# @user_id = current_user.id
		@image_video = ImageVideo.new(image_video_params)
		if @image_video.save
			redirect_to new_session_path
		else
			redirect_to :back
		end
	end

	def destroy
		@image_video = ImageVideo.find(params[:image_video])
		@image_video.destroy
		redirect_to(:back)
	end

	private

	def image_video_params
		params.require(:image_video).permit(:day_id, :media, :caption)
	end

end