require "rails_helper"

describe Match do
	describe "::new" do
		it "can be instantiated" do
			m = Match.new
			expect(m.class).to eq(Match)
		end
	end

	#associations
	#it { should belong_to(:hashtags)}
	#it { should have_many(:users)}

	#validations
	it { should validate_numericality_of(:winning_hashtag_score)}
	it { should validate_numericality_of(:losing_hashtag_score)}
	it { should validate_numericality_of(:tie_score)}

	#db
	it { should have_db_column(:winning_player_id)}
	it { should have_db_column(:losing_player_id)}
	it { should have_db_column(:winning_hashtag_id)}
	it { should have_db_column(:losing_hashtag_id)}
	it { should have_db_column(:winning_hashtag_score)}
	it { should have_db_column(:losing_hashtag_score)}
	it { should have_db_column(:tie_player_one_id)}
	it { should have_db_column(:tie_player_two_id)}
	it { should have_db_column(:tie_hashtag_one_id)}
	it { should have_db_column(:tie_hashtag_two_id)}
	it { should have_db_column(:tie_score)}


end