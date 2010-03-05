class Mcquestion < ActiveRecord::Base
  belongs_to :survey
  has_many :mcanswers
end
