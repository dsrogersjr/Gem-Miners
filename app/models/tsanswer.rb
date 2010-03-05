class Tsanswer < ActiveRecord::Base
  belongs_to :user
  belongs_to :tsquestion
  
  validates_numericality_of :theanswer, :greater_than_or_equal_to => 0
  validates_numericality_of :theanswer, :less_than_or_equal_to => 3
end
