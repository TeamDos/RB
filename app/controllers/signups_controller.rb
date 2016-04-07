class SignupsController < ApplicationController
  def create
    @user = User.new(username: params["username"],
                     password: params["password"])

    @user.ensure_auth_token  
    if @user.save
      render json: { user: @user.as_json(only: [:username, :password, :auth_token]) }, status: :created
      
           
    else
      render json: { errors: @user.errors.full_messages },
             status: :unprocessable_entity
    end
  end
end
