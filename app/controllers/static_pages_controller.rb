class StaticPagesController < ApplicationController
  
  def home
  	#this is the main page of the app
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