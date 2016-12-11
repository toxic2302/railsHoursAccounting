class Company < ApplicationRecord
  has_many :workdays
  has_many :projects
  validates :title, presence: true
end
