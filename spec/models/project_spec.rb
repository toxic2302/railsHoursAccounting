require 'rails_helper'

RSpec.describe Project, type: :model do

  let (:company) { build :company }

  describe 'associations' do
    it 'belongs to user' do
      expect(Project.reflect_on_association(:user).macro).to eq(:belongs_to)
    end
  end

  describe 'validations' do
    it 'has a title' do
      project.title = nil
      expect(project).to_not be_valid

      project.title = 'Google Slides'
      expect(project).to be_valid

      project.description = nil
      expect(project).to_not be_valid

      project.description = 'Developing a presentation platform aka PowerPoint'
      expect(project).to be_valid
    end
  end

  describe 'crud' do

  end
end
