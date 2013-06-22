class PostsController < ApplicationController
  include PostsHelper

  def index
    @posts = Post.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

end