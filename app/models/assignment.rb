class Assignment < ActiveRecord::Base
  belongs_to :course
  has_many :marks

  validates :name, presence: true
end
