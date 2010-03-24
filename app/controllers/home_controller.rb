class HomeController < ApplicationController
  #require_role "admin", :for_all_except => [:index, :syllabus, :calendar]
  layout 'home', :except => :other
  
  def index
    time = Time.new
    @time = time.strftime("%m/%d/%Y")
    
    @posts = Post.find(:all)
    @user = User.new(params[:user])
  end
end
