class Course < ActiveRecord::Base
  belongs_to :teacher
  has_many :assignments
  has_many :students
end
