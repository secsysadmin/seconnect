require 'rails_helper'

RSpec.describe "budgets/show", type: :view do
  before(:each) do
    @budget = assign(:budget, Budget.create!(
      budget_name: "Budget Name",
      budget_amount: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Budget Name/)
    expect(rendered).to match(/9.99/)
  end
end
