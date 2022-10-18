require 'rails_helper'

RSpec.describe "creditcards/show", type: :view do
  before(:each) do
    @creditcard = assign(:creditcard, Creditcard.create!(
      user_id: 2,
      committee: "Committee",
      reason: "Reason",
      status: "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Committee/)
    expect(rendered).to match(/Reason/)
    expect(rendered).to match(/Status/)
  end
end
