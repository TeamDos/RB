class GamedataController <ApplicationsController
  def create
    @gamedatum = current_user.gamedata.create(username: params["username"]
                                              score: params["score"])
    if @gamedatum.save
      render "create.json.jbuilder", status: :created
    else
      render json: {errors: @gamedatum.errors.full_messages},
             status: unprocessable_entity
    end
  end
  def index
    @gamedata = Gamedatum.all
    render "create.json.jbuilder", status: :ok
    #not sure if should be Gamedatum.all sense only want like top ten
  end
end
