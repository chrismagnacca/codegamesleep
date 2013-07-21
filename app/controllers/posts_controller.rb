class PostsController < ApplicationController
  include PostsHelper

  def index
    @posts = Post.friendly_id.find(:all, :order => 'date DESC')
  end

  def show
    @post = Post.friendly_id.find(params[:id])
    redirect_to( @post, status: :moved_permanently ) if request.path != post_path(@post)
  end

end