class HomeController < ApplicationController
before_filter :sideposts_updates

  def index
    @posts = Post.find(:all)
    @user = User.new(params[:user])
  end
  
  def team
    @document = Document.new
  end

end
