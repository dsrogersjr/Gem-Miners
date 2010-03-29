class PrivateController < ApplicationController
  require_role "admin", :except => :group
  
  def group
    @posts = Post.find(:all)
  end
  
  def admin
    @posts = Post.find(:all)
  end
  
end
