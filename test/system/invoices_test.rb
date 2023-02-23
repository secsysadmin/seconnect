# frozen_string_literal: true

require 'application_system_test_case'

class InvoicesTest < ApplicationSystemTestCase
     setup do
          @invoice = invoices(:one)
     end

     test 'visiting the index' 
          visit invoices_url
          assert_selector 'h1', text: 'Invoices'
     end

     test 'creating an Invoice' do
          visit invoices_url
          click_on 'New Invoice'

          fill_in 'Vendor ID', with: @invoice.vendor_id
          fill_in 'Vendor title', with: @invoice.vendor_title
          fill_in 'Address', with: @invoice.address
          fill_in 'City', with: @invoice.city
          fill_in 'State', with: @invoice.state
          fill_in 'Zip', with: @invoice.zip
          fill_in 'Payment Method', with: @invoice.payment_method
          fill_in 'Test', with: @invoice.test
          fill_in 'Notes', with: @invoice.notes
          click_on 'Create Invoice'

          assert_text 'Invoice was successfully created'
          click_on 'Back'
     end

     test 'updating an Invoice' do
          visit invoices_url
          click_on 'Edit', match: :first

          fill_in 'Vendor ID', with: @invoice.vendor_id
          fill_in 'Vendor title', with: @invoice.vendor_title
          fill_in 'Address', with: @invoice.address
          fill_in 'City', with: @invoice.city
          fill_in 'State', with: @invoice.state
          fill_in 'Zip', with: @invoice.zip
          fill_in 'Payment Method', with: @invoice.payment_method
          fill_in 'Test', with: @invoice.test
          fill_in 'Notes', with: @invoice.notes
          click_on 'Update Invoice'

          assert_text 'Invoice was successfully updated'
          click_on 'Back'
     end

     test 'destroying an Invoice' do
          visit invoices_url
          page.accept_confirm do
               click_on 'Destroy', match: :first
          end

          assert_text 'Invoice was successfully destroyed'
     end
end
