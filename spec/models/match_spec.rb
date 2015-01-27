require "rails_helper"

describe Match do
	describe "::new" do
		it "can be instantiated" do
			m = Match.new
			expect(m.class).to eq(Match)
		end
	end

	#associations
	it { should have_and_belong_to_many(:hashtags)}
	it { should have_and_belong_to_many(:users)}

	#validations
	it { should validate_presence_of(:created_at)}

	it { should have_db_column(:winning_player)}
	it { should have_db_column(:losing_player)}
	it { should have_db_column(:winning_hashtag)}
	it { should have_db_column(:losing_hashtag)}
	it { should have_db_column(:winning_hashtag_score)}
	it { should have_db_column(:losing_hashtag_score)}
	it { should have_db_column(:tie_player_one)}
	it { should have_db_column(:tie_player_two)}
	it { should have_db_column(:tie_hashtag_one)}
	it { should have_db_column(:tie_hashtag_two)}
	it { should have_db_column(:tie_score)}


end