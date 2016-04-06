class UserController <ApplicationController
  def login
    @user = User.find_by!(username: params["username"])
    if @user.authenticate(params[:password])
      render json: { @user.as_json(only:[:username]) },
             status: :ok
    else
      render json: { message: "Email or password could not be found." },
             status: :unauthorized
    end
  end
end
