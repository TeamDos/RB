class GameDataController < ApplicationController
  before_action :authenticate!, only: [:create]

  def create_table
    @game_data = curent_user.game_data(caption: params["caption"],
                                        image: params["file"])
    if @game_data.save
      render "create.json.jbuilder", status: :created
    else
      render json: {errors: @gmae_data.error.full_message },
             status: :unprocessable_entity
    end
  end
end
