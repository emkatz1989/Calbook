class CreateImageVideos < ActiveRecord::Migration
  def change
    create_table :image_videos do |t|
      t.references :day, index: true

      t.string :caption

      t.timestamps
    end
  end
end