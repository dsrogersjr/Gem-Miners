class PrivateController < ApplicationController
  require_role "admin"
  
  def public
    @username = current_user.id
  end
end