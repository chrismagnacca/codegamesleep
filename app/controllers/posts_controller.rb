class PostsController < ApplicationController
  include PostsHelper

  def index
    @posts = Post.friendly_id.order('date DESC').page(params[:page]).per(5)
  end

  def show
    @post = Post.friendly_id.find(params[:id])
    redirect_to( @post, status: :moved_permanently ) if request.path != post_path(@post)
  end

end