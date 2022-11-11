require 'rails_helper'

RSpec.describe "budget_categories/new", type: :view do
  before(:each) do
    assign(:budget_category, BudgetCategory.new(
      name: "MyString",
      budgeted: "9.99",
      spent: "9.99",
      pending: "9.99",
      balance: "9.99"
    ))
  end

  it "renders new budget_category form" do
    render

    assert_select "form[action=?][method=?]", budget_categories_path, "post" do

      assert_select "input[name=?]", "budget_category[name]"

      assert_select "input[name=?]", "budget_category[budgeted]"

      assert_select "input[name=?]", "budget_category[spent]"

      assert_select "input[name=?]", "budget_category[pending]"

      assert_select "input[name=?]", "budget_category[balance]"
    end
  end
end
