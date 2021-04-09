require 'rails_helper'

RSpec.describe "dealersheps/new", type: :view do
  before(:each) do
    assign(:dealershep, Dealershep.new(
      name: "MyString"
    ))
  end

  it "renders new dealershep form" do
    render

    assert_select "form[action=?][method=?]", dealersheps_path, "post" do

      assert_select "input[name=?]", "dealershep[name]"
    end
  end
end
