require 'rails_helper'

RSpec.describe "dealersheps/edit", type: :view do
  before(:each) do
    @dealershep = assign(:dealershep, Dealershep.create!(
      name: "MyString"
    ))
  end

  it "renders the edit dealershep form" do
    render

    assert_select "form[action=?][method=?]", dealershep_path(@dealershep), "post" do

      assert_select "input[name=?]", "dealershep[name]"
    end
  end
end
