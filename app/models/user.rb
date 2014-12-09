class User < ActiveRecord::Base
	include ActiveModel::SecurePassword
	has_secure_password

	has_many :entries

	# has_many :photos

	validates_uniqueness_of :username

	validates_presence_of :password

end