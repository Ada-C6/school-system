class Mark < ActiveRecord::Base
  belongs_to :assignment
  belongs_to :student

  validates :grade, presence: true
end
