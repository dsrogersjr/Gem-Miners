class HomeController < ApplicationController
  
  def index
    @posts = Post.find(:all)
    @user = User.new(params[:user])
  end
  
  def team
  
  end

end
