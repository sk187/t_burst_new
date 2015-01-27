require "rails_helper"

describe User do
	describe "::new" do
		it "can be instantiated" do
			u = User.new
			expect(u.class).to eq(User)
		end
	end

	#associations
	it { should have_and_belong_to_many(:hashtags)} 
	it { should have_many(:matches)}

	#validations
	it { should validate_presence_of(:name)}
	it { should validate_presence_of(:uid)}
	it { should validate_presence_of(:provider)}

end