require 'pry'

class MatchesController < ApplicationController
  
  def show
  	@wins = 

  end


#   def create
#   	#create a new hashtag if one doesn't already exist
#   	@hashtag_one = Hashtag.find_or_create_by(body: match_params[:hashtag_one_body])

#   	# #create a new hashtag 2 if one doesn't already exist
#   	@hashtag_two = Hashtag.find_or_create_by(body: match_params[:hashtag_two_body])

#   	binding.pry

#   	#create the new match
#   	@match = Match.new

#   	#if it's a win/loss situation
#   	if match_params[:winning_player_id]

#   	#if it's a tie
#   	elsif match_params[:tie_score]

#   	#if the winner was the current user
#   		#increment the current user leaderboard by 1

#   	# #needs to create a match

#   end

#   private

# 	  def match_params
# 	  	params.require(:match).permit(:winning_player_id, :losing_player_id, :winning_hashtag_score, :losing_hashtag_score, :tie_player_one_id, :tie_player_two_id, :tie_score, :hashtag_one_body, :hashtag_two_body)
# 	  end
# end


  def create(match_params)
	  	# #need strong params
	  	# match = Match.new 
	  	# match.winning_player_id =
	  	# match.losing_player_id =
	  	# match.winning_hashtag_score =
	  	# match.losing_hashtag_score =
	  	# match.tie_player_one_id =
	  	# match.tie_player_two_id = 
	  	# match.tie_hashtag_one_id = 
	  	# match.tie_hashtag_two_id =
	  	# match.tie_score =
	  	# match.winning_hashtag_id =
	  	# match.losing_hashtag_id = 

	  	# win = 
  end

  # private

	 #  def match_params
	 #  		params.require(:match).permit(:winning_player_id, :losing_player_id, :winning_hashtag_score, :losing_hashtag_score, :tie_player_one_id, :tie_player_two_id, :tie_hashtag_one_id, :tie_hashtag_two_id, :tie_score, :winning_hashtag_id, :losing_hashtag_id)
	 #  end
  # end

end
>>>>>>> 999054e5b560df1bd063a36f8e0eb0535256ff68
