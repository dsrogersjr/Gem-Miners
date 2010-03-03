class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :question360s
end
