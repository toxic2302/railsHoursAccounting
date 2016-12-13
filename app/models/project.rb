class Project < ApplicationRecord
  belongs_to :user
  #belongs_to :company
  validates :title, presence: true
end
