require 'rails_helper'

RSpec.describe "creditcards/new", type: :view do
  before(:each) do
    assign(:creditcard, Creditcard.new(
      user_id: 1,
      vendor: "MyString",
      payment_link: "MyString",
      phone: "",
      Confirmation_order: "MyString",
      reservation_name: "MyString",
      status: "MyString",
      notes: "MyString"
    ))
  end

  it "renders new creditcard form" do
    render

    assert_select "form[action=?][method=?]", creditcards_path, "post" do

      assert_select "input[name=?]", "creditcard[user_id]"

      assert_select "input[name=?]", "creditcard[vendor]"

      assert_select "input[name=?]", "creditcard[payment_link]"

      assert_select "input[name=?]", "creditcard[phone]"

      assert_select "input[name=?]", "creditcard[Confirmation_order]"

      assert_select "input[name=?]", "creditcard[reservation_name]"

      assert_select "input[name=?]", "creditcard[status]"

      assert_select "input[name=?]", "creditcard[notes]"
    end
  end
end
