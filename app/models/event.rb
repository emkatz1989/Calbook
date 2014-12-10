class Event < ActiveRecord::Base
  belongs_to :day

  has_many :tag_types, as: :taggable
end
