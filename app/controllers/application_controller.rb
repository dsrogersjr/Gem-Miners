# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  layout 'home'
  
  include AuthenticatedSystem  
  # You can move this into a different controller, if you wish.  This module gives you the require_role helpers, and others.
  include RoleRequirementSystem

  
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  # Global Variable to make sideposts available to all pages
   def sideposts_updates
       @posts = Post.find(:all)
   end

  
  # not working at the moment
  def admin_or_owner_required(id)  
    unless current_user.id == id || current_user.has_role?('admin')
      redirect_to '/'  
    end  
  end
  
  def require_current_users_group(id)
    @group ||= Group.find(params[:group_id] || params[:id] )
    unless group.id == id || current_user.has_role?('admin')
      redirect_to '/'
    end
  end

end