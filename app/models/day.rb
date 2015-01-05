class Day < ActiveRecord::Base
 # before_validation :checkstuff
# attr_accessible :blurbs_attributes, :events_attributes, :image_videos_attributes

  belongs_to :user
  has_many :blurbs
  has_many :events
  has_many :image_videos

  accepts_nested_attributes_for :blurbs, :events, :image_videos  
  # reject_if: proc { |attributes| attributes['title'].blank? }
	# def checkstuff
	# 	puts "%%%%%%%%%%%%%%%%%%% checkstuff"
	# 	(self.image_videos.length - 1).downto 0 do |i|
	# 		# if image_videos[i]=nil
	# 		puts "Doing #{i}"
	# 	end
	# end
end
