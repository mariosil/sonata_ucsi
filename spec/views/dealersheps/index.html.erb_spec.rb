require 'rails_helper'

RSpec.describe "dealersheps/index", type: :view do
  before(:each) do
    assign(:dealersheps, [
      Dealershep.create!(
        name: "Name"
      ),
      Dealershep.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of dealersheps" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
