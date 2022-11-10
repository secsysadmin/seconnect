require 'rails_helper'

RSpec.describe "creditcards/show", type: :view do
  before(:each) do
    @creditcard = assign(:creditcard, Creditcard.create!(
      user_id: 2,
      vendor: "Vendor",
      payment_link: "Payment Link",
      phone: "",
      Confirmation_order: "Confirmation Order",
      reservation_name: "Reservation Name",
      status: "Status",
      notes: "Notes"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Vendor/)
    expect(rendered).to match(/Payment Link/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Confirmation Order/)
    expect(rendered).to match(/Reservation Name/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Notes/)
  end
end
