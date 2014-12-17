class Day < ActiveRecord::Base
  
# attr_accessible :blurbs_attributes, :events_attributes, :image_videos_attributes

  belongs_to :user
  has_many :blurbs
  has_many :events
  has_many :image_videos

  accepts_nested_attributes_for :blurbs, :events, :image_videos

end
