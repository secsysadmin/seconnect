require 'rails_helper'

RSpec.describe "admin_receipts/show", type: :view do
  before(:each) do
    @admin_receipt = assign(:admin_receipt, AdminReceipt.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
