require 'rails_helper'

RSpec.describe "atcs/new", type: :view do
  before(:each) do
    assign(:atc, Atc.new(
      vendor_id: 1,
      contact_name: "MyString",
      phone: "",
      email: "MyString",
      purchase_info: "MyString",
      amount: 1,
      notes: "MyString"
    ))
  end

  it "renders new atc form" do
    render

    assert_select "form[action=?][method=?]", atcs_path, "post" do

      assert_select "input[name=?]", "atc[vendor_id]"

      assert_select "input[name=?]", "atc[contact_name]"

      assert_select "input[name=?]", "atc[phone]"

      assert_select "input[name=?]", "atc[email]"

      assert_select "input[name=?]", "atc[purchase_info]"

      assert_select "input[name=?]", "atc[amount]"

      assert_select "input[name=?]", "atc[notes]"
    end
  end
end
