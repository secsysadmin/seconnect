# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('invoices/new', type: :view) do
     before do
          assign(:invoice, Invoice.new(
                                vendor_id: 'MyString',
                                vendor_title: 'MyString',
                                tax_id_number: 'MyString',
                                address: 'MyString',
                                city: 'MyString',
                                state: 'MyString',
                                zip: 'MyString',
                                payment_method: 'MyString',
                                notes: 'MyString'
                           )
          )
     end

     it 'renders new invoice form' do
          render

          assert_select 'form[action=?][method=?]', invoices_path, 'post' do
               assert_select 'input[name=?]', 'invoice[vendor_id]'

               assert_select 'input[name=?]', 'invoice[vendor_title]'

               assert_select 'input[name=?]', 'invoice[tax_id_number]'

               assert_select 'input[name=?]', 'invoice[address]'

               assert_select 'input[name=?]', 'invoice[city]'

               assert_select 'input[name=?]', 'invoice[state]'

               assert_select 'input[name=?]', 'invoice[zip]'

               assert_select 'input[name=?]', 'invoice[payment_method]'

               assert_select 'input[name=?]', 'invoice[notes]'
          end
     end
end
