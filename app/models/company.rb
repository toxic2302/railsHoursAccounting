class Company < ApplicationRecord
  has_many :workdays
  has_many :projects
  belongs_to :user
  validates :title, presence: true
end
