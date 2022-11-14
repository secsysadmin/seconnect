require 'rails_helper'

RSpec.describe "invoices/show", type: :view do
  before(:each) do
    @invoice = assign(:invoice, Invoice.create!(
      vendor_title: "Vendor Title",
      tax_id_number: "Tax Id Number",
      address: "Address",
      city: "City",
      state: "State",
      zip: "Zip",
      payment_method: "Payment Method"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Vendor Title/)
    expect(rendered).to match(/Tax Id Number/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/Payment Method/)
  end
end
