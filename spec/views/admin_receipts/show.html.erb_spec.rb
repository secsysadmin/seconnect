# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('admin_receipts/show', type: :view) do
     before do
          @admin_receipt = assign(:admin_receipt, AdminReceipt.create!)
     end

     it 'renders attributes in <p>' do
          render
     end
end
