require 'rails_helper'

RSpec.describe "budget_categories/edit", type: :view do
  before(:each) do
    @budget_category = assign(:budget_category, BudgetCategory.create!(
      name: "MyString",
      budgeted: "9.99",
      spent: "9.99",
      pending: "9.99",
      balance: "9.99"
    ))
  end

  it "renders the edit budget_category form" do
    render

    assert_select "form[action=?][method=?]", budget_category_path(@budget_category), "post" do

      assert_select "input[name=?]", "budget_category[name]"

      assert_select "input[name=?]", "budget_category[budgeted]"

      assert_select "input[name=?]", "budget_category[spent]"

      assert_select "input[name=?]", "budget_category[pending]"

      assert_select "input[name=?]", "budget_category[balance]"
    end
  end
end
