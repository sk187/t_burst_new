require "rails_helper"

describe Hashtag do
	describe "::new" do
		it "can be instantiated" do
			h = Hashtag.new
			expect(h.class).to eq(Hashtag)
		end
	end

	#associations
	it { should have_and_belong_to_many(:users)}
	it { should have_and_belong_to_many(:matches)}

	#validations
	it { should validate_presence_of(:body)}

end