require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        email: "Email",
        password: "Password",
        password_confirmation: "Password Confirmation"
      ),
      User.create!(
        email: "Email",
        password: "Password",
        password_confirmation: "Password Confirmation"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Password".to_s, count: 2
    assert_select "tr>td", text: "Password Confirmation".to_s, count: 2
  end
end
