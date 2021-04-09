require 'rails_helper'

RSpec.describe "dealersheps/show", type: :view do
  before(:each) do
    @dealershep = assign(:dealershep, Dealershep.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
