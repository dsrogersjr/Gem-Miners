class PrivateController < ApplicationController
  require_role "admin", :except => :group
  require_role "group1", :except => :admin
  
  def group
  end
  
  def admin
  end
  
  def list
    @users = User.all
  end
end
