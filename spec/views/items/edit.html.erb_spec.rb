# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('items/edit', type: :view) do
     before do
          @item = assign(:item, Item.create!(
                                     items_purchased: 'MyString',
                                     budget: 'MyString',
                                     category: 'MyString',
                                     subcategory: 'MyString',
                                     taxcategory: 'MyString',
                                     gift: false,
                                     cost: 1.5
                                )
          )
     end

     it 'renders the edit item form' do
          render

          assert_select 'form[action=?][method=?]', item_path(@item), 'post' do
               assert_select 'input[name=?]', 'item[items_purchased]'

               assert_select 'input[name=?]', 'item[budget]'

               assert_select 'input[name=?]', 'item[category]'

               assert_select 'input[name=?]', 'item[subcategory]'

               assert_select 'input[name=?]', 'item[taxcategory]'

               assert_select 'input[name=?]', 'item[gift]'

               assert_select 'input[name=?]', 'item[cost]'
          end
     end
end
