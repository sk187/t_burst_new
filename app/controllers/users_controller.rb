class UsersController < ApplicationController
  helper_method :current_user


  def create


  end


  def index #AJAX URL: "/users/[@current_user.id].json"
     @user ||= User.find(session[:user_id]) if session[:user_id]
    #   name: current_user.name,
    #   wins: current_user.won_matches.length,
    #   losses: current_user.lost_matches.length,
    #   ties: (current_user.tie_matches_one.length + current_user.tie_matches_two.length)
    # }

    respond_to do |format|
      format.json { render json: @user }
    end
  end

private

  def current_user 
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
      #binding.pry
  end 

end