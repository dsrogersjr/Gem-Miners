class Usersurvey < ActiveRecord::Base
  has_many :users
  belongs_to :surveys
end
