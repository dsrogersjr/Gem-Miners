class Mcanswer < ActiveRecord::Base
  belongs_to :user
  belongs_to :mcquestion
end
