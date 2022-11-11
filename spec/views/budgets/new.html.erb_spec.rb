require 'rails_helper'

RSpec.describe "budgets/new", type: :view do
  before(:each) do
    assign(:budget, Budget.new(
      budget_name: "MyString",
      budget_amount: "9.99"
    ))
  end

  it "renders new budget form" do
    render

    assert_select "form[action=?][method=?]", budgets_path, "post" do

      assert_select "input[name=?]", "budget[budget_name]"

      assert_select "input[name=?]", "budget[budget_amount]"
    end
  end
end
