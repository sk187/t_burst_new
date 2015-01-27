class HashtagsController < ApplicationController
  
  def index #AJAX URL: "/hashtags.json"
  	@hashtags = {body: '#hello'}
  	#return the top 10 users based on wins

  	#hashtags = Hashtag.includes(:won_matches)

  	#hashtags.each do |hashtag|
  	#	hashtag.won_matches.length
  	#end
  	respond_to do |format|
  		format.json { render json: @hashtags }
  	end
  end

end