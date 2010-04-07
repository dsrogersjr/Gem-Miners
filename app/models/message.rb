class Message < ActiveRecord::Base
  ajaxful_rateable :stars => 4
  belongs_to :topic
  belongs_to :user 
  
end
