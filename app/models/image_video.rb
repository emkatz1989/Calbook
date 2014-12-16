class ImageVideo < ActiveRecord::Base
  belongs_to :day
  has_many :tag_types, as: :taggable

    has_attached_file :media, :styles => {
    :medium => { :geometry => "640x480", :format => 'flv' },
    :thumb => { :geometry => "100x100#", :format => 'jpg', :time => 10 }
  }, :processors => [:transcoder]

validates :media, :attachment_presence => true
validates_with AttachmentPresenceValidator, :attributes => :media
validates_with AttachmentSizeValidator, :attributes => :media, :less_than => 5.megabytes
validates_attachment_content_type :media, :content_type => /\Aimage\/.*\Z/


end
