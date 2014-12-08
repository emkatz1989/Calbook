class Entry < ActiveRecord::Base
	include ActiveModel::SecurePassword
	
	belongs_to :user

end