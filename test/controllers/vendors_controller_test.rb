# frozen_string_literal: true

require 'test_helper'

class VendorsControllerTest < ActionDispatch::IntegrationTest
     setup do
          @vendor = vendors(:one)
     end

     test 'should get index' do
          get vendors_url
          assert_response :success
     end

     test 'should get new' do
          get new_vendor_url
          assert_response :success
     end

     test 'should create vendor' do
          assert_difference('Vendor.count') do
               post vendors_url,
                    params: {
                         vendor: {
                              city: @vendor.city,
                              email: @vendor.email,
                              phone_number: @vendor.phone_number,
                              state: @vendor.state,
                              street_address: @vendor.street_address,
                              vendor_name: @vendor.vendor_name,
                              zip_code: @vendor.zip_code
                              tax_id: @vendor.tax_id
                         }
                    }
          end

          assert_redirected_to vendor_url(Vendor.last)
     end

     test 'should show vendor' do
          get vendor_url(@vendor)
          assert_response :success
     end

     test 'should get edit' do
          get edit_vendor_url(@vendor)
          assert_response :success
     end

     test 'should update vendor' do
          patch vendor_url(@vendor),
                params: {
                     vendor: {
                          city: @vendor.city,
                          email: @vendor.email,
                          phone_number: @vendor.phone_number,
                          state: @vendor.state,
                          street_address: @vendor.street_address,
                          vendor_name: @vendor.vendor_name,
                          zip_code: @vendor.zip_code
                          tax_id: @vendor.tax_id
                     }
                }
          assert_redirected_to vendor_url(@vendor)
     end

     test 'should destroy vendor' do
          assert_difference('Vendor.count', -1) do
               delete vendor_url(@vendor)
          end

          assert_redirected_to vendors_url
     end
end
