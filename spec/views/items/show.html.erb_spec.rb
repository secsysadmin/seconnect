require 'rails_helper'

RSpec.describe "items/show", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      items_purchased: "Items Purchased",
      budget: "Budget",
      category: "Category",
      subcategory: "Subcategory",
      taxcategory: "Taxcategory",
      gift: false,
      cost: 2.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Items Purchased/)
    expect(rendered).to match(/Budget/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/Subcategory/)
    expect(rendered).to match(/Taxcategory/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2.5/)
  end
end
