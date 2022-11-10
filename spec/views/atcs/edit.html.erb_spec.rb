require 'rails_helper'

RSpec.describe "atcs/edit", type: :view do
  before(:each) do
    @atc = assign(:atc, Atc.create!(
      vendor_id: 1,
      contact_name: "MyString",
      phone: "",
      email: "MyString",
      purchase_info: "MyString",
      amount: 1,
      notes: "MyString"
    ))
  end

  it "renders the edit atc form" do
    render

    assert_select "form[action=?][method=?]", atc_path(@atc), "post" do

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
