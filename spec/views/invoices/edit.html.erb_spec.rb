require 'rails_helper'

RSpec.describe "invoices/edit", type: :view do
  before(:each) do
    @invoice = assign(:invoice, Invoice.create!(
      vendor_title: "MyString",
      tax_id_number: "MyString",
      address: "MyString",
      city: "MyString",
      state: "MyString",
      zip: "MyString",
      payment_method: "MyString"
    ))
  end

  it "renders the edit invoice form" do
    render

    assert_select "form[action=?][method=?]", invoice_path(@invoice), "post" do

      assert_select "input[name=?]", "invoice[vendor_title]"

      assert_select "input[name=?]", "invoice[tax_id_number]"

      assert_select "input[name=?]", "invoice[address]"

      assert_select "input[name=?]", "invoice[city]"

      assert_select "input[name=?]", "invoice[state]"

      assert_select "input[name=?]", "invoice[zip]"

      assert_select "input[name=?]", "invoice[payment_method]"
    end
  end
end
