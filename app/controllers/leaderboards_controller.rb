class LeaderboardsController < ApplicationController
  
	def index
		@leaderboards = [
			{name: 10}
		]
		# leaderboard order by win_count

		respond_to do |format| #'/leaderboards.json'
      format.json { render json: @leaderboards }
    end
	end

end