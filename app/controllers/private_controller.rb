class PrivateController < ApplicationController
  require_role "admin" "student"
  
  def public
    @username = current_user.id
  end
end