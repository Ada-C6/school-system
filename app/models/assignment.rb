class Assignment < ActiveRecord::Base
  belongs_to :course
  has_many :marks
end
