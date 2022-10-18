require 'rails_helper'

RSpec.describe "creditcards/index", type: :view do
  before(:each) do
    assign(:creditcards, [
      Creditcard.create!(
        user_id: 2,
        committee: "Committee",
        reason: "Reason",
        status: "Status"
      ),
      Creditcard.create!(
        user_id: 2,
        committee: "Committee",
        reason: "Reason",
        status: "Status"
      )
    ])
  end

  it "renders a list of creditcards" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Committee".to_s, count: 2
    assert_select "tr>td", text: "Reason".to_s, count: 2
    assert_select "tr>td", text: "Status".to_s, count: 2
  end
end
