class UserController <ApplicationController
  before_action :authenticate!, only: [:check_auth]

 def login
    @user = User.find_by!(username: params["username"])
    if @user.authenticate(params[:password])
      render json: { user: @user.as_json(only:[:username, :auth_token, :id]) },
             status: :ok
    else
      render json: { message: "Username or password could not be found." },
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
  # def update
  #   @user = current_user.users.new(username: params["title"],
  #                                  password: params["password"])
  #    if @user.save
  #       render "create.json.jbuilder", status: :created
  #    else
  #       render json: {errors: @image.errors.full_messages}, status: :unprocessable_entity
  #    end
  # end
end
