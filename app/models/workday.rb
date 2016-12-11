class Workday < ApplicationRecord
  belongs_to :company
  validates :day, presence: true
  validates :start, presence: true
  validates :end, presence: true
end
