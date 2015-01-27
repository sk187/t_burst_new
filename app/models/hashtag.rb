class Hashtag < ActiveRecord::Base
	has_many :won_matches, class_name: "Match", foreign_key: 'winning_hashtag_id'
	has_many :lost_matches, class_name: "Match", foreign_key: 'losing_hashtag_id'
	has_many :tie_matches_one, class_name: "Match", foreign_key: 'tie_hashtag_one_id'
	has_many :tie_matches_two, class_name: "Match", foreign_key: 'tie_hashtag_two_id'
	has_many :users, through: :matches
end