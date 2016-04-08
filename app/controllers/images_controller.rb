class ImagesController < ApplicationController
  before_action :authenticate!, only: [:create]

  def create
    # binding.pry
    @image = current_user.images.create(img: params["file"], 
                                        caption: params["caption"])
    if @image.save
      render json: {image: @image}, status: :created
    else
      render json: {errors: @image.errors.full_messages}, status: :unprocessable_entity
    end
  end
end 