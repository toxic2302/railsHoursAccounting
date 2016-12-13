require 'rails_helper'

RSpec.describe "workdays/index", type: :view do
  before(:each) do
    assign(:workdays, [
      Workday.create!(),
      Workday.create!()
    ])
  end

  it "renders a list of workdays" do
    render
  end
end
