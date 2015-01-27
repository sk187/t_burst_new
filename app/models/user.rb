class User < ActiveRecord::Base
	has_many :won_matches, class_name: "Match", foreign_key: 'winning_player_id'
	has_many :lost_matches, class_name: "Match", foreign_key: 'losing_player_id'
	has_many :tie_matches_one, class_name: "Match", foreign_key: 'tie_player_one_id'
	has_many :tie_matches_two, class_name: "Match", foreign_key: 'tie_player_two_id'
	has_many :hashtags, through: :matches
end