class Workday < ApplicationRecord
  belongs_to :company
  #belongs_to :project
  validates :day, presence: true
  validates :start, presence: true
  validates :end, presence: true
end
