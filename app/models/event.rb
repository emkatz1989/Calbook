class Event < ActiveRecord::Base
  belongs_to :day
  # attr_accessible :title, :text, :start_time, :end_time

  # validates_presence_of :title, :start_time, :end_time
  has_many :tag_types, as: :taggable
end
