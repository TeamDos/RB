class LeaderboardsController < ApplicationController

	def create
	  @leaderboard = Leaderboard.new(username: params["username"],
	  	                             score: params["score"])
binding.pry
	  if @leaderboard.save
	  	render "create.json.jbuilder", status: :created

	  else
      render json: { errors: @user.errors.full_messages },
             status: :unprocessable_entity
      end
    end
  	
  	def index
    	@leaderboard = Leaderboard.all
    	# @users = User.all
    	render "create.json.jbuilder", status: :ok
  	end

end