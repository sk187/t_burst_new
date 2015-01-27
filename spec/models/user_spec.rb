require "rails_helper"

describe User do
	describe "::new" do
		it "can be instantiated" do
			u = User.new
			expect(u.class).to eq(User)
		end
	end

	#associations
	#it { should have_many(:hashtags)} 

	#validations
	it { should validate_presence_of(:name)}
	it { should validate_presence_of(:uid)}
	it { should validate_presence_of(:provider)}
	it { should validate_presence_of(:oauth_callback_confirmed)}
	it { should validate_uniqueness_of(:name)}

end