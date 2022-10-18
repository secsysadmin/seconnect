# frozen_string_literal: true

require 'test_helper'

class InvoicesControllerTest < ActionDispatch::IntegrationTest
     setup do
          @invoice = invoices(:one)
     end

     test 'should get index' do
          get invoices_url
          assert_response :success
     end

     test 'should get new' do
          get new_invoice_url
          assert_response :success
     end

     test 'should create committee' do
          assert_difference('Invoice.count') do
               post invoice_url,
                    params: {
          invoice: {
                              budget: @invoice.budget,
                              committee_name: @invoice.invoice_name,
                              user_id: @invoice.user_id
                         }
                    }
          end

          assert_redirected_to invoice_url(Invoice.last)
     end

     test 'should show committee' do
          get invoice_url(@invoice)
          assert_response :success
     end

     test 'should get edit' do
          get edit_invoice_url(@invoice)
          assert_response :success
     end

     test 'should update committee' do
          patch invoice_url(@invoice),
                params: {
                     committee: {
                          budget: @invoice.budget,
                          committee_name: @committee.committee_name,
                          user_id: @committee.user_id
                     }
                }
          assert_redirected_to committee_url(@committee)
     end

     test 'should destroy committee' do
          assert_difference('Committee.count', -1) do
               delete committee_url(@committee)
          end

          assert_redirected_to committees_url
     end
end