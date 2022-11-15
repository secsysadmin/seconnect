require 'rails_helper'

RSpec.describe "invoices/index", type: :view do
  before(:each) do
    assign(:invoices, [
      Invoice.create!(
        vendor_id: "Vendor",
        vendor_title: "Vendor Title",
        tax_id_number: "Tax Id Number",
        address: "Address",
        city: "City",
        state: "State",
        zip: "Zip",
        payment_method: "Payment Method",
        notes: "Notes"
      ),
      Invoice.create!(
        vendor_id: "Vendor",
        vendor_title: "Vendor Title",
        tax_id_number: "Tax Id Number",
        address: "Address",
        city: "City",
        state: "State",
        zip: "Zip",
        payment_method: "Payment Method",
        notes: "Notes"
      )
    ])
  end

  it "renders a list of invoices" do
    render
    assert_select "tr>td", text: "Vendor".to_s, count: 2
    assert_select "tr>td", text: "Vendor Title".to_s, count: 2
    assert_select "tr>td", text: "Tax Id Number".to_s, count: 2
    assert_select "tr>td", text: "Address".to_s, count: 2
    assert_select "tr>td", text: "City".to_s, count: 2
    assert_select "tr>td", text: "State".to_s, count: 2
    assert_select "tr>td", text: "Zip".to_s, count: 2
    assert_select "tr>td", text: "Payment Method".to_s, count: 2
    assert_select "tr>td", text: "Notes".to_s, count: 2
  end
end
