class Teacher < ActiveRecord::Base
  has_one :course

  validates :name, presence: true
end
