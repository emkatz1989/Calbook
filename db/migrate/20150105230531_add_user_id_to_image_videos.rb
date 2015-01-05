class AddUserIdToImageVideos < ActiveRecord::Migration
  def change
    add_column :image_videos, :user_id, :integer
  end
end
