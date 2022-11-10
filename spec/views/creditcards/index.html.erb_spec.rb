require 'rails_helper'

RSpec.describe "creditcards/index", type: :view do
  before(:each) do
    assign(:creditcards, [
      Creditcard.create!(
        user_id: 2,
        vendor: "Vendor",
        payment_link: "Payment Link",
        phone: "",
        Confirmation_order: "Confirmation Order",
        reservation_name: "Reservation Name",
        status: "Status",
        notes: "Notes"
      ),
      Creditcard.create!(
        user_id: 2,
        vendor: "Vendor",
        payment_link: "Payment Link",
        phone: "",
        Confirmation_order: "Confirmation Order",
        reservation_name: "Reservation Name",
        status: "Status",
        notes: "Notes"
      )
    ])
  end

  it "renders a list of creditcards" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Vendor".to_s, count: 2
    assert_select "tr>td", text: "Payment Link".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: "Confirmation Order".to_s, count: 2
    assert_select "tr>td", text: "Reservation Name".to_s, count: 2
    assert_select "tr>td", text: "Status".to_s, count: 2
    assert_select "tr>td", text: "Notes".to_s, count: 2
  end
end
