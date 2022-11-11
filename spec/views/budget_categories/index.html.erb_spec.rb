require 'rails_helper'

RSpec.describe "budget_categories/index", type: :view do
  before(:each) do
    assign(:budget_categories, [
      BudgetCategory.create!(
        name: "Name",
        budgeted: "9.99",
        spent: "9.99",
        pending: "9.99",
        balance: "9.99"
      ),
      BudgetCategory.create!(
        name: "Name",
        budgeted: "9.99",
        spent: "9.99",
        pending: "9.99",
        balance: "9.99"
      )
    ])
  end

  it "renders a list of budget_categories" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
  end
end
