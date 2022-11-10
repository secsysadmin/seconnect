require 'rails_helper'

RSpec.describe "atcs/index", type: :view do
  before(:each) do
    assign(:atcs, [
      Atc.create!(
        vendor_id: 2,
        contact_name: "Contact Name",
        phone: "",
        email: "Email",
        purchase_info: "Purchase Info",
        amount: 3,
        notes: "Notes"
      ),
      Atc.create!(
        vendor_id: 2,
        contact_name: "Contact Name",
        phone: "",
        email: "Email",
        purchase_info: "Purchase Info",
        amount: 3,
        notes: "Notes"
      )
    ])
  end

  it "renders a list of atcs" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Contact Name".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Purchase Info".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "Notes".to_s, count: 2
  end
end
