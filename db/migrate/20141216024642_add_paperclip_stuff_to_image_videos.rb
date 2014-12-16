class AddPaperclipStuffToImageVideos < ActiveRecord::Migration
  def self.up
    add_attachment :image_videos, :media
  end

  def self.down
    remove_attachment :image_videos, :media
  end
  
end
