# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('admin_receipts/new', type: :view) do
     before do
          assign(:admin_receipt, AdminReceipt.new)
     end

     it 'renders new admin_receipt form' do
          render

          assert_select 'form[action=?][method=?]', admin_receipts_path, 'post' do
          end
     end
end
