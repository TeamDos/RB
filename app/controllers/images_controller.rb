class ImagesController < ApplicationController
  before_action :authenticate!, only: [:create]

  def create
    @image = current_user.images.create(img: params["img"],
                                        caption: params["caption"])
    if @image.save
    #   render json: {image: @image, url: @image.img.url }, status: :created
      render "create.json.jbuilder", status: :created
    else
      render json: {errors: @image.errors.full_messages}, status: :unprocessable_entity
    end
  end
  def show
    @image = Image.all
    #depends if we are to send 10 at a time or they
    #request how many they need, must ask frontend
    #how/ what they need may not be responsible for picking images
    #render ...
  end
end
