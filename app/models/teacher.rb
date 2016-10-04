class Teacher < ActiveRecord::Base
  has_one :course
end
