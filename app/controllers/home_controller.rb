class HomeController < ApplicationController
  include HomeHelper

  def index

  end

  def new
    render newest_post, :formats => [:html], :handlers => :erb, :layout => false
  end

  def title
    render :json => {:article => newest_post}
  end

  def post

  end

  def newer(post)

  end

  def older(post)

  end

  def archive

  end
end
