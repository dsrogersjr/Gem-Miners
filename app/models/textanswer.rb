class Textanswer < ActiveRecord::Base
  belongs_to :user
  belongs_to :textquestion
end
