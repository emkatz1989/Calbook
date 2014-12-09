require 'rails_helper'

describe Entry do
	it "has a valid factory" do
		expect(FactoryGirl.create(:entry)).to be_valid
	end

	it "has a foreign key for user_id " do
		expect(FactoryGirl.build(:entry, user_id: nil)
	end
end	
end