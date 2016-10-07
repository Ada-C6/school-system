class Student < ActiveRecord::Base
  belongs_to :course
  has_many :marks

  validates :first_name, :last_name, presence: true
end
