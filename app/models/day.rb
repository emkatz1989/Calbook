class Day < ActiveRecord::Base
  belongs_to :user
  has_many :blurbs
  has_many :events
  has_many :image_videos
end
