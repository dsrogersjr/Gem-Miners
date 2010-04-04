class Survey < ActiveRecord::Base
  has_many :mcquestions
  has_many :textquestions
  has_many :usersurveys
end
