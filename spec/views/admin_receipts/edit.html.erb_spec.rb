# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('admin_receipts/edit', type: :view) do
     before do
          @admin_receipt = assign(:admin_receipt, AdminReceipt.create!)
     end

     it 'renders the edit admin_receipt form' do
          render

          assert_select 'form[action=?][method=?]', admin_receipt_path(@admin_receipt), 'post' do
          end
     end
end
