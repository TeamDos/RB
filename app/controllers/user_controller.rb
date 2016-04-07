class UserController <ApplicationController
  before_action :authenticate!, only: [:check_auth]

 def login
    @user = User.find_by!(username: params["username"])
    if @user.authenticate(params[:password])
      render json: { user: @user.as_json(only:[:username, :acces_token]) },
             status: :ok
    else
      render json: { message: "Email or password could not be found." },
             status: :unauthorized
    end
  end

  def check_auth
    if current_user
      render json: { message: "Logged in as #{current_user.username}" },
             status: :ok
    else
      render json: { message: "Auth isn't working yet." },
              status: :unauthorized
    end
  end
end
