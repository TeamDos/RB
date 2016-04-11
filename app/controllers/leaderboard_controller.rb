class LeaderboardController < ApplicationController

	def create
	  @leaderboard = Leaderboard.new(username: params["username"],
	  	                             score: params["score"])

	  if @leaderboard.save
	  	render "create.json.jbuilder", status: :created

	  else
      render json: { errors: @user.errors.full_messages },
             status: :unprocessable_entity
    end
  	
  	def index
    	@images = Image.all
    	# @users = User.all
    	render "create.json.jbuilder", status: :ok
  	end
  end
end