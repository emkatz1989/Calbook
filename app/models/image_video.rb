class ImageVideo < ActiveRecord::Base
  belongs_to :day
  has_many :tag_types, as: :taggable

  has_attached_file :avatar, :styles => {
    :medium => { :geometry => "640x480", :format => 'flv' },
    :thumb => { :geometry => "100x100#", :format => 'jpg', :time => 10 }
  }, :processors => [:transcoder]



end
