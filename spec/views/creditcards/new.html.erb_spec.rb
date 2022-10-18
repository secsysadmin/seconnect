require 'rails_helper'

RSpec.describe "creditcards/new", type: :view do
  before(:each) do
    assign(:creditcard, Creditcard.new(
      user_id: 1,
      committee: "MyString",
      reason: "MyString",
      status: "MyString"
    ))
  end

  it "renders new creditcard form" do
    render

    assert_select "form[action=?][method=?]", creditcards_path, "post" do

      assert_select "input[name=?]", "creditcard[user_id]"

      assert_select "input[name=?]", "creditcard[committee]"

      assert_select "input[name=?]", "creditcard[reason]"

      assert_select "input[name=?]", "creditcard[status]"
    end
  end
end
