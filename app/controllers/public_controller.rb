class PublicController < ApplicationController

  def home
    time = Time.new
    @time = time.strftime("%m/%d/%Y")
  end
  
  def search
    
  end
end
