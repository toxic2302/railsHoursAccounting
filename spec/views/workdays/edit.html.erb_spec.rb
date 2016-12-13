require 'rails_helper'

RSpec.describe "workdays/edit", type: :view do
  before(:each) do
    @workday = assign(:workday, Workday.create!())
  end

  it "renders the edit workday form" do
    render

    assert_select "form[action=?][method=?]", workday_path(@workday), "post" do
    end
  end
end
