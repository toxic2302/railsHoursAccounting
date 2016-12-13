require 'rails_helper'

RSpec.describe Company, type: :model do

  let (:company) { build :company }

  describe 'associations' do
    it 'has many workdays' do
      expect(Company.reflect_on_association(:workdays).macro).to eq(:has_many)
    end
    it 'has many projects' do
      expect(Company.reflect_on_association(:projects).macro).to eq(:has_many)
    end
  end

  describe 'validations' do
    it 'has a title' do
      company.title = nil
      expect(company).to_not be_valid

      company.title = 'IBM'
      expect(company).to be_valid
    end

    it 'has a description' do
      company.description = nil
      expect(description).to_not be_valid

      company.description = 'Mother of IT Companies'
      expect(company).to be_valid
    end
  end

  describe 'crud' do

  end
end
