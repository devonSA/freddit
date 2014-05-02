class PostsController < ApplicationController

  def index
    @posts = current_user.posts
  end

  def create
    @post = current_user.posts.build(safe_params)
    @post.save
    redirect_to posts_path



  end

  private

  def safe_params
    params.require(:post).permit(:url)

  end
end
