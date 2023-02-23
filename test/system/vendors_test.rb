# frozen_string_literal: true

require 'application_system_test_case'

class VendorsTest < ApplicationSystemTestCase
     setup do
          @vendor = vendors(:one)
     end

     test 'visiting the index' do
          visit vendors_url
          assert_selector 'h1', text: 'Vendors'
     end

     test 'creating a Vendor' do
          visit vendors_url
          click_on 'New Vendor'

          fill_in 'City', with: @vendor.city
          fill_in 'Email', with: @vendor.email
          fill_in 'Phone number', with: @vendor.phone_number
          fill_in 'State', with: @vendor.state
          fill_in 'Street address', with: @vendor.street_address
          fill_in 'Vendor name', with: @vendor.vendor_name
          fill_in 'Zip code', with: @vendor.zip_code
          fill_in 'Tax ID', with: @vendor.tax_id

          click_on 'Create Vendor'

          assert_text 'Vendor was successfully created'
          click_on 'Back'
     end

     test 'updating a Vendor' do
          visit vendors_url
          click_on 'Edit', match: :first

          fill_in 'City', with: @vendor.city
          fill_in 'Email', with: @vendor.email
          fill_in 'Phone number', with: @vendor.phone_number
          fill_in 'State', with: @vendor.state
          fill_in 'Street address', with: @vendor.street_address
          fill_in 'Vendor name', with: @vendor.vendor_name
          fill_in 'Zip code', with: @vendor.zip_code
          fill_in 'Tax ID', with: @vendor.tax_id
          click_on 'Update Vendor'

          assert_text 'Vendor was successfully updated'
          click_on 'Back'
     end

     test 'destroying a Vendor' do
          visit vendors_url
          page.accept_confirm do
               click_on 'Destroy', match: :first
          end

          assert_text 'Vendor was successfully destroyed'
     end
end
