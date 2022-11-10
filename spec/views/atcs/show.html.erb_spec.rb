require 'rails_helper'

RSpec.describe "atcs/show", type: :view do
  before(:each) do
    @atc = assign(:atc, Atc.create!(
      vendor_id: 2,
      contact_name: "Contact Name",
      phone: "",
      email: "Email",
      purchase_info: "Purchase Info",
      amount: 3,
      notes: "Notes"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Contact Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Purchase Info/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Notes/)
  end
end
