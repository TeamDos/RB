class SignupsController < ApplicationController
  def create
    @user = User.new(username: params["username"],
                     password: params["password"])

    @user.ensure_auth_token  
    if @user.save
      render json: { user: @user.as_json(only: [:id, :username, :password, :auth_token]) }, status: :created
    
      User.login(username: username, password: password)
           
    else
      render json: { errors: @user.errors.full_messages },
             status: :unprocessable_entity
    end
  end
end