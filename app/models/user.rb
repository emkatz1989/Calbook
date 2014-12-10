class User < ActiveRecord::Base
	include ActiveModel::SecurePassword
	has_secure_password

	has_many :days

	has_many :blurbs,  :through => :days
	has_many :events,  :through => :days
	has_many :image_videos, :through => :days

	# has_man

	validates_presence_of :fullname

	validates_uniqueness_of :email

	validates_presence_of :password

end