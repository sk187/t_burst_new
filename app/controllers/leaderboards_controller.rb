class LeaderboardsController < ApplicationController
  
	def index
		@leaderboards = [
			{name: @name, wins: @wins}
		]

		@leaders = Leaderboard.order(win_count: :desc).limit(10)
		@leaders.each do |leader|
			@leaderboards << {name: leader.user.name, wins: leader.win_count}
		end
		# created an array of json object of the top 10 leaders



		# leaderboard order by win_count

		respond_to do |format| #'/leaderboards.json'
      format.json { render json: @leaderboards }
    end
	end

end