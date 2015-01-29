class UsersController < ApplicationController

  def create


  end


  def index 
     @users = User.all
     @user ||= User.find(session[:user_id]) if session[:user_id]
     @name = @user.name
     @wins = @user.won_matches.length
     @losses = @user.lost_matches.length
     @ties = (@user.tie_matches_one.length + @user.tie_matches_two.length)

     @user_stats = {id: @user.id, name: @name, wins: @wins, losses: @losses, ties: @ties}
     #created the user's stats object in Json


    respond_to do |format|
      format.json { render json: @user_stats }
    end
  end

end