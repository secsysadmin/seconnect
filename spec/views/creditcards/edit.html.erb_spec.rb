require 'rails_helper'

RSpec.describe "creditcards/edit", type: :view do
  before(:each) do
    @creditcard = assign(:creditcard, Creditcard.create!(
      user_id: 1,
      committee: "MyString",
      reason: "MyString",
      status: "MyString"
    ))
  end

  it "renders the edit creditcard form" do
    render

    assert_select "form[action=?][method=?]", creditcard_path(@creditcard), "post" do

      assert_select "input[name=?]", "creditcard[user_id]"

      assert_select "input[name=?]", "creditcard[committee]"

      assert_select "input[name=?]", "creditcard[reason]"

      assert_select "input[name=?]", "creditcard[status]"
    end
  end
end
