class Tag < ActiveRecord::Base
	has_many :tag_types
	
	has_many :blurbs, :through => :tag_types
	has_many :events, :through => :tag_types
	has_many :image_videos, :through => :tag_types

end
