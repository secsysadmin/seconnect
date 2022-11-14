require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        items_purchased: "Items Purchased",
        budget: "Budget",
        category: "Category",
        subcategory: "Subcategory",
        taxcategory: "Taxcategory",
        gift: false,
        cost: 2.5
      ),
      Item.create!(
        items_purchased: "Items Purchased",
        budget: "Budget",
        category: "Category",
        subcategory: "Subcategory",
        taxcategory: "Taxcategory",
        gift: false,
        cost: 2.5
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select "tr>td", text: "Items Purchased".to_s, count: 2
    assert_select "tr>td", text: "Budget".to_s, count: 2
    assert_select "tr>td", text: "Category".to_s, count: 2
    assert_select "tr>td", text: "Subcategory".to_s, count: 2
    assert_select "tr>td", text: "Taxcategory".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
  end
end
