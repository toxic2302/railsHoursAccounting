require 'rails_helper'

RSpec.describe "workdays/show", type: :view do
  before(:each) do
    @workday = assign(:workday, Workday.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
