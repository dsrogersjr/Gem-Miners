class Threesixty < ActiveRecord::Base
  has_many :threesixtytextqs
  has_many :threesixtyqs
  has_many :threesixtyanswers, :through => :threesxityqs
end
