class User < ActiveRecord::Base
	include ActiveModel::SecurePassword
	has_secure_password

	has_many :entries

	validates_presence_of :username, :password

end