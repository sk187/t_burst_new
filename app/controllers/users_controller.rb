class UsersController < ApplicationController

  def create


  end


  def show #AJAX URL: "/users/[@current_user.id].json"
    # @user = {
    #   name: current_user.name,
    #   wins: current_user.won_matches.length,
    #   losses: current_user.lost_matches.length,
    #   ties: (current_user.tie_matches_one.length + current_user.tie_matches_two.length)
    # }

    respond_to do |format|
      format.json { render json: @user }
    end
  end

  def index #AJAX URL: "/users.json"
    @users = [
      {name: "Rebecca", wins: 10},
      {name: "James", wins: 25},
      {name: "Sung", wins: 13},
      {name: "Emily", wins: 1}
    ]
    #users = User.includes(:won_matches)

    #users.each do |user|
    # user.won_matches.length
    #end
    respond_to do |format|
      format.json { render json: @users }
    end
  end


end