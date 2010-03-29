class HomeController < ApplicationController
  layout 'home'
  
  def index
    @posts = Post.find(:all)
    @user = User.new(params[:user])
  end

end
