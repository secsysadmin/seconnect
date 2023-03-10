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

     test 'should create invoice' do
          assert_difference('Invoice.count') do
               post invoice_url,
                    params: {
          invoice: {
                              vendor_id: @invoice.vendor_id,
                              tax_id_number: @invoice.tax_id_number,
                              city: @invoice.city,
                              state: @invoice.state,
                              zip: @invoice.zip,
                              payment_method: @invoice.payment_method,
                              test: @invoice.test,
                              travel_password: @invoice.travel_password
                              notes: @invoice.notes
                         }
                    }
          end

          assert_redirected_to invoice_url(Invoice.last)
     end

     test 'should show invoice' do
          get invoice_url(@invoice)
          assert_response :success
     end

     test 'should get edit' do
          get edit_invoice_url(@invoice)
          assert_response :success
     end

     test 'should update invoice' do
          patch invoice_url(@invoice),
                params: {
     invoice: {
                          vendor_id: @invoice.vendor_id,
                          tax_id_number: @invoice.tax_id_number,
                          city: @invoice.city,
                          state: @invoice.state,
                          zip: @invoice.zip,
                          payment_method: @invoice.payment_method,
                          test: @invoice.test,
                          notes: @invoice.notes
                     }
                }
          assert_redirected_to invoice_url(@invoice)
     end

     test 'should destroy invoice' do
          assert_difference('Invoice.count', -1) do
               delete invoice_url(@invoice)
          end

          assert_redirected_to invoices_url
     end
end
