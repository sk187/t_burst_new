class StaticPagesController < ApplicationController
  
  def home
  	#this is the main page of the app
     @user = User.find(session[:user_id])
     @wins = @user.won_matches.length
     @losses = @user.lost_matches.length
     @ties = (@user.tie_matches_one.length + @user.tie_matches_two.length)
     @leaders = Leaderboard.order(win_count: :desc).limit(10)
     @leaders.each do |leader|
      leader.user.name
      leader.win_count
    end
  end

  def computer

    

  	trending = ["#getperezout", "#giftlikethat", "#rajoyentelecinco", "#askbeckyg", "#whenlarrywas18", "#estarianecesitando", "#cbb", "#shoppershour", "#belenestebanlamejor", "#coookparamolsaa", "#worcestershirehour", "#piazzapulita", "#isoladeifamosi"]
	random_tweet = trending.sample
	@computer_choice = {tag: random_tweet}


	#make a call to /computer.json
  	respond_to do |format|
  		format.json { render json: @computer_choice }
  	end
  end

end