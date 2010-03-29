class Textquestion < ActiveRecord::Base
  belongs_to :survey
  has_many :textanswers
end
