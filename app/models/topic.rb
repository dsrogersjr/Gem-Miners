class Topic < ActiveRecord::Base
  
    belongs_to :forum  
    has_many :messages, :dependent => :destroy
    
    belongs_to :user
   
end
