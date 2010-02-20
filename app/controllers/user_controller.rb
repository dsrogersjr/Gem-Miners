class UserController < ApplicationController
  def login
  end

  def private
    if !session[:user_id]
      redirect_to :controller => 'public', :action => 'home'
    end
  end
  
  def authenticate
    # User.new(params[:userform]) will create a new object and retrieve values from the form and store it variable @user
    @user = User.new(params[:userform])
    # Find records with username, password
    valid_user = User.find(:first, :conditions => ["user_name = ? and password = ?", @user.user_name, @user.password])
    
    # If statement checks whether valid_user exists or not
    if valid_user
      # Creates a session with user_name
      session[:user_id] = valid_user.user_name
      # Redirects the user to our private page
      redirect_to :action => 'private'
    else
      flash[:notice] = "Invalid User/Password"
      redirect_to :controller => 'public', :action => 'home'
    end
  end
  
  def logout
    if session[:user_id]
      reset_session
      redirect_to :controller => 'public', :action => 'home'
    end
  end
  
end