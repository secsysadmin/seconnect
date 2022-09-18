require "application_system_test_case"

class RequestsTest < ApplicationSystemTestCase
  setup do
    @request = requests(:one)
  end

  test "visiting the index" do
    visit requests_url
    assert_selector "h1", text: "Requests"
  end

  test "creating a Request" do
    visit requests_url
    click_on "New Request"

    fill_in "Budget", with: @request.budget_id
    fill_in "Category", with: @request.category
    fill_in "Cost", with: @request.cost
    check "Gift" if @request.gift
    fill_in "Items purchased", with: @request.items_purchased
    fill_in "Subcategory", with: @request.subcategory
    fill_in "Tax category", with: @request.tax_category
    fill_in "Type", with: @request.type
    fill_in "User", with: @request.user_id
    fill_in "Vendor", with: @request.vendor_id
    click_on "Create Request"

    assert_text "Request was successfully created"
    click_on "Back"
  end

  test "updating a Request" do
    visit requests_url
    click_on "Edit", match: :first

    fill_in "Budget", with: @request.budget_id
    fill_in "Category", with: @request.category
    fill_in "Cost", with: @request.cost
    check "Gift" if @request.gift
    fill_in "Items purchased", with: @request.items_purchased
    fill_in "Subcategory", with: @request.subcategory
    fill_in "Tax category", with: @request.tax_category
    fill_in "Type", with: @request.type
    fill_in "User", with: @request.user_id
    fill_in "Vendor", with: @request.vendor_id
    click_on "Update Request"

    assert_text "Request was successfully updated"
    click_on "Back"
  end

  test "destroying a Request" do
    visit requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Request was successfully destroyed"
  end
end
