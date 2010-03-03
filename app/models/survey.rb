class Survey < ActiveRecord::Base
  has_many :questions
  has_many :mcquestions
  has_many :textquestions
end
