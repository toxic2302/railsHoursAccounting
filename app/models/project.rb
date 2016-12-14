class Project < ApplicationRecord
  has_many  :workdays
  belongs_to :user
  belongs_to :company
  validates :title, presence: true
end
