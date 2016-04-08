class ImageController < ApplicationController
  before_action :authneticate!, only: [:create]

  def create
    @post = current_user.posts.create(img: params["img"], caption: params["caption"])
    if @psot.save
      render json: {post: @post}, status: :created
    else
      render json: {errors: @post.errors.full_messages}, status: :unprocessable_entity
    end
  end
end 
