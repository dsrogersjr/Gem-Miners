class UsersController < ApplicationController
  before_filter :sideposts_updates
  before_filter :login_required
  
  # render new.rhtml
  def new
    @user = User.new
  end
 
  def create
    #logout_keeping_session!
    @user = User.new(params[:user])
    @user.role_ids = params[:user][:role_ids]
    success = @user && @user.save
    if success && @user.errors.empty?
      # Protects against session fixation attacks, causes request forgery
      # protection if visitor resubmits an earlier form using back
      # button. Uncomment if you understand the tradeoffs.
      # reset session
      
      #self.current_user = @user # !! now logged in
      redirect_to :controller => 'home', :action => 'index'
      flash[:notice] = "Thanks for signing up!  We're sending you an email with your activation code."
    else
      flash[:error]  = "We couldn't set up that account, sorry.  Please try again, or contact an admin (link is above)."
      render :action => 'new'
    end
  end
  
  def edit
     @user = User.find(params[:id])
     if request.post?
       @user.login = params[:user][:login] if params[:user][:login]
       @user.password, @user.password_confirmation = params[:password], params[:password_confirmation] unless params[:password].nil? or params[:password].empty? or @user.auth_source_id
       @user.group_ids = params[:user][:group_ids] if params[:user][:group_ids]
       @user.attributes = params[:user]
       # Was the account actived ? (do it before User#save clears the change)
       was_activated = (@user.status_change == [User::STATUS_REGISTERED, User::STATUS_ACTIVE])
     end
   end
   
   def update
     @user = User.find(params[:id])
     
     @user.group_ids = params[:user][:group_ids]

     respond_to do |format|
       if @user.update_attributes(params[:user])
         flash[:notice] = 'User was successfully updated.'
         format.html { render :action => "edit"  }
         format.xml  { head :ok }
       else
         format.html { render :action => "edit" }
         format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
       end
     end
   end
   
   def show
     @user = User.find(params[:id])

     respond_to do |format|
       format.html # show.html.erb
       format.xml  { render :xml => @user }
     end
   end
   
   def index
    @users = User.all
   end
   
   # methods to use with profile
   def edit_account
     @user             = current_user
     @is_current_user  = true
   end

   def update_account
     @user             = current_user
     @user.attributes  = params[:user]

     if @user.save
       flash[:notice] = :your_changes_were_saved.l
       respond_to do |format|
         format.html {redirect_to user_path(@user)}
         format.js
       end      
     else
       respond_to do |format|
         format.html {render :action => 'edit_account'}
         format.js
       end
     end
   end

end
