class PostsController < ApplicationController
  before_action :authneticate!, only: [:create]

  def create
    @post = current_user.posts.create(category: params["category"],
                                              image: params["file"])
    if @psot.save
      render json: {post: @post}, status: :created
    else
      render json: {errors: @post.errors.full_messages}, status: :unprocessable_entity
    end
  end
end 
