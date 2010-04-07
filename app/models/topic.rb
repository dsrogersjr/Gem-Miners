class Topic < ActiveRecord::Base
    ajaxful_rateable :stars => 4
    belongs_to :forum  
    has_many :messages, :dependent => :destroy
    
    belongs_to :user
   
end
