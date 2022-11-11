require 'rails_helper'

RSpec.describe "budget_categories/show", type: :view do
  before(:each) do
    @budget_category = assign(:budget_category, BudgetCategory.create!(
      name: "Name",
      budgeted: "9.99",
      spent: "9.99",
      pending: "9.99",
      balance: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
