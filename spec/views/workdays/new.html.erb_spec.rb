require 'rails_helper'

RSpec.describe "workdays/new", type: :view do
  before(:each) do
    assign(:workday, Workday.new())
  end

  it "renders new workday form" do
    render

    assert_select "form[action=?][method=?]", workdays_path, "post" do
    end
  end
end
