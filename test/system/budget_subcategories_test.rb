# frozen_string_literal: true

require 'application_system_test_case'

class BudgetSubcategoriesTest < ApplicationSystemTestCase
     setup do
          @budget_subcategory = budget_subcategories(:one)
     end

     test 'visiting the index' do
          visit budget_subcategories_url
          assert_selector 'h1', text: 'Budget Subcategories'
     end

     test 'creating a Budget subcategory' do
          visit budget_subcategories_url
          click_on 'New Budget Subcategory'

          fill_in 'Committee', with: @budget_subcategory.committee_id
          fill_in 'Subcategory amount', with: @budget_subcategory.subcategory_amount
          fill_in 'Subcategory name', with: @budget_subcategory.subcategory_name
          click_on 'Create Budget subcategory'

          assert_text 'Budget subcategory was successfully created'
          click_on 'Back'
     end

     test 'updating a Budget subcategory' do
          visit budget_subcategories_url
          click_on 'Edit', match: :first

          fill_in 'Committee', with: @budget_subcategory.committee_id
          fill_in 'Subcategory amount', with: @budget_subcategory.subcategory_amount
          fill_in 'Subcategory name', with: @budget_subcategory.subcategory_name
          click_on 'Update Budget subcategory'

          assert_text 'Budget subcategory was successfully updated'
          click_on 'Back'
     end

     test 'destroying a Budget subcategory' do
          visit budget_subcategories_url
          page.accept_confirm do
               click_on 'Destroy', match: :first
          end

          assert_text 'Budget subcategory was successfully destroyed'
     end
end
