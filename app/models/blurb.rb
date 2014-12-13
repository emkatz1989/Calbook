class Blurb < ActiveRecord::Base
  belongs_to :day

  has_many :tag_types, as: :taggable
  has_many :tags, through: :tag_types
end


