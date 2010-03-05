class Tsquestion < ActiveRecord::Base
  belongs_to :survey
  has_many :tsanswers
  
end
