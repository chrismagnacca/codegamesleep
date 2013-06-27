class PostsController < ApplicationController
  include PostsHelper

  def index
    @posts = Post.friendly_id.find(:all)
  end

  def show
    @post = Post.friendly_id.find(params[:id])

    if request.path != post_path(@post)
      redirect_to @post, status: :moved_permanently
    end

  end

end