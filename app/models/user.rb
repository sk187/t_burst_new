class User < ActiveRecord::Base

	#associations
	has_many :won_matches, class_name: "Match", foreign_key: 'winning_player_id'
	has_many :lost_matches, class_name: "Match", foreign_key: 'losing_player_id'
	has_many :tie_matches_one, class_name: "Match", foreign_key: 'tie_player_one_id'
	has_many :tie_matches_two, class_name: "Match", foreign_key: 'tie_player_two_id'
	has_many :hashtags, through: :matches

	has_one :leaderboard

	#validations
	validates_uniqueness_of :name
	validates_presence_of :name 
	validates_presence_of :uid
	validates_presence_of :provider

	def self.create_with_omniauth(auth)
		create! do |user|
			user.provider = auth["provider"]
			user.uid = auth["uid"]
			user.name = auth["info"]["name"]
			Leaderboard.create(user_id: user.id, win_count: 0)
		end
	end
end

