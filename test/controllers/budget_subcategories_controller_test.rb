# frozen_string_literal: true

require 'test_helper'

class BudgetSubcategoriesControllerTest < ActionDispatch::IntegrationTest
     setup do
          @budget_subcategory = budget_subcategories(:one)
     end

     test 'should get index' do
          get budget_subcategories_url
          assert_response :success
     end

     test 'should get new' do
          get new_budget_subcategory_url
          assert_response :success
     end

     test 'should create budget_subcategory' do
          assert_difference('BudgetSubcategory.count') do
               post budget_subcategories_url,
                    params: {
                         budget_subcategory: {
                              committee_id: @budget_subcategory.committee_id,
                              subcategory_amount: @budget_subcategory.subcategory_amount,
                              subcategory_name: @budget_subcategory.subcategory_name
                         }
                    }
          end

          assert_redirected_to budget_subcategory_url(BudgetSubcategory.last)
     end

     test 'should show budget_subcategory' do
          get budget_subcategory_url(@budget_subcategory)
          assert_response :success
     end

     test 'should get edit' do
          get edit_budget_subcategory_url(@budget_subcategory)
          assert_response :success
     end

     test 'should update budget_subcategory' do
          patch budget_subcategory_url(@budget_subcategory),
                params: {
                     budget_subcategory: {
                          committee_id: @budget_subcategory.committee_id,
                          subcategory_amount: @budget_subcategory.subcategory_amount,
                          subcategory_name: @budget_subcategory.subcategory_name
                     }
                }
          assert_redirected_to budget_subcategory_url(@budget_subcategory)
     end

     test 'should destroy budget_subcategory' do
          assert_difference('BudgetSubcategory.count', -1) do
               delete budget_subcategory_url(@budget_subcategory)
          end

          assert_redirected_to budget_subcategories_url
     end
end
