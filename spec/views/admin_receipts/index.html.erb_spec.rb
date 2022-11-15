# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('admin_receipts/index', type: :view) do
     before do
          assign(:admin_receipts, [
               AdminReceipt.create!,
               AdminReceipt.create!
          ]
          )
     end

     it 'renders a list of admin_receipts' do
          render
     end
end
