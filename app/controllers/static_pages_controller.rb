class StaticPagesController < ApplicationController
  
  def home
  	#this is the main page of the app
  end

  def computer
  	@computer_choice = "hello"

  	respond_to do |format|
  		format.json { render json: @computer_choice }
  	end
  end

end