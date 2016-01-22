class PostsController < ApplicationController

  def show
    @post = Post.find_by(id: params[:id])
  end

  def index
    @posts = Post.order(created_at: :desc).limit(25)
  end
end