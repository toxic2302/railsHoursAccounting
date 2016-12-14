class Workday < ApplicationRecord
  belongs_to :company
  belongs_to :project, optional: true
  belongs_to :user
  validates :day, presence: true
  validates :start, presence: true
  validates :end, presence: true
end
