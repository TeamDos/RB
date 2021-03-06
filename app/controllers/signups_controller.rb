class SignupsController < ApplicationController
  def create
    @user = User.new(username: params["username"],
                     password: params["password"])

    @user.ensure_auth_token  
    if @user.save
      render "create.json.jbuilder", status: :created
           
    else
      render json: { errors: @user.errors.full_messages },
             status: :unprocessable_entity
    end
  end
end