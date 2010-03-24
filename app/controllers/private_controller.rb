class PrivateController < ApplicationController
  
  def public
    @username = current_user.id
  end
end