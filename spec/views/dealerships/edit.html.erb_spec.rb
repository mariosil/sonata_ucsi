require 'rails_helper'

RSpec.describe "dealerships/edit", type: :view do
  before(:each) do
    @dealership = assign(:dealership, Dealership.create!(
      name: "MyString"
    ))
  end

  it "renders the edit dealership form" do
    render

    assert_select "form[action=?][method=?]", dealership_path(@dealership), "post" do

      assert_select "input[name=?]", "dealership[name]"
    end
  end
end
