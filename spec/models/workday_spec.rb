require 'rails_helper'

RSpec.describe Workday, type: :model do

  describe 'associations' do
    it 'has and belongs to many people' do
      expect(Workday.reflect_on_association(:company).macro).to eq(:belongs_to)
    end
  end

  describe 'validations' do
    it 'should be valid' do
      expect()
    end
  end

  describe 'crud' do

    it 'create' do
      expect(create :Workday).to be_valid
      #expect{createdWorkday}.to change{ Workday.count }.by(1)
    end

    it 'read' do
      #expect{createdtitle}.to eq(Title.all.last)
    end

    it 'update' do

    end

    it 'delete' do
      #expect{ delete :destroy, :id => createdtitle }.to change{ Title.count }.by(1)
    end
  end
end
