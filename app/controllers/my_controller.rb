class MyController < ApplicationController

  # Edit user's account
  def show
       @user = current_user
      
      if request.post?
        @user.attributes = params[:user]
      end   
  end

  # Manage user's password
  def password

  end
  
end
