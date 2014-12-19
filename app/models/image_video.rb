class ImageVideo < ActiveRecord::Base
  belongs_to :day
  # attr_accessible :media, :caption
  has_many :tag_types, as: :taggable



   has_attached_file :media, 
   :styles => {
      :original => ['1920x1680>', :jpg],
      :small    => ['100x100#',   :jpg],
      :medium   => ['250x250',    :jpg],
      :large    => ['500x500>',   :jpg]
    }
    validates_attachment_content_type :media, content_type: ["media/jpg", "media/jpeg", "media/png", "media/gif"]


#paperclip ffmpeg

  # has_attached_file :media, :styles => {
  #   :medium => { :geometry => "640x480", :format => 'flv', :convert_options => {:output => {:ar => 44100}} },
  #   :large => { :geometry => "1024x576", :format => 'flv', :convert_options => {:output => {:ar => 44100}} },
  # }, :processors => [:ffmpeg]


#av transcoder

  #   has_attached_file :media, :styles => {
  #   :medium => { :geometry => "640x480", :format => 'flv' },
  #   :thumb => { :geometry => "100x100#", :format => 'jpg', :time => 10 }
  # }, :processors => ['transcoder']


  # <attachment>_meta

  # auto_rotate: 'portrait'
  # auto_rotate: 'landscape'

# validates :media, :attachment_presence => true
validates_with AttachmentPresenceValidator, :attributes => :media
# validates_with AttachmentSizeValidator, :attributes => :media, :less_than => 5.megabytes
validates_attachment_content_type :media, :content_type => /\Aimage\/.*\Z/


end
