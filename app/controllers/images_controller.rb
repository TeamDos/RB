class ImagesController < ApplicationController
  before_action :authenticate!, only: [:create]

  def create
    binding.pry
    @image = current_user.images.create(img: params["img"], 
                                        caption: params["caption"])
    if @image.save
    #   render json: {image: @image, url: @image.img.url }, status: :created
      render "create.json.jbuilder", status: :created
    else
      render json: {errors: @image.errors.full_messages}, status: :unprocessable_entity
    end
  end
end 