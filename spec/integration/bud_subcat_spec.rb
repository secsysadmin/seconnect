# frozen_string_literal: true

# require 'rails_helper'

# RSpec.describe('Budget Category Integration Test', type: :feature) do
#     it 'new budget category' do
#          visit login_admin_path
#          click_on 'Budget Management'
#          click_on 'Edit Categories'
#          click_on 'New Budget Category'
#          expect(page).to(have_content('New Budget Category'))
#     end
# end

# RSpec.describe('Create Budget Subcategory 2', type: :feature) do
#     it 'new budget subcategory' do
#          visit login_admin_path
#          click_on 'Budget Management'
#          click_on 'New Budget Subcategory'
#          fill_in 'Committee', with: '2'
#          fill_in 'Subcategory name', with: 'meeting refreshments'
#          fill_in 'Subcategory amount', with: '35'
#          fill_in 'Status', with: 'Pending'
#          click_on 'Create Budget subcategory'
#          expect(page).to(have_content('meeting refreshments'))
#     end
# end
# RSpec.describe('Create Budget Subcategory 3', type: :feature) do
#     it 'new budget subcategory' do
#          visit login_admin_path
#          click_on 'Budget Management'
#          click_on 'New Budget Subcategory'
#          fill_in 'Committee', with: '3'
#          fill_in 'Subcategory name', with: 'meeting utensils'
#          fill_in 'Subcategory amount', with: '25'
#          fill_in 'Status', with: 'Pending'
#          click_on 'Create Budget subcategory'
#          expect(page).to(have_content('meeting utensils'))
#     end
# end
# RSpec.describe('Create Budget Subcategory 4', type: :feature) do
#     it 'new budget subcategory' do
#          visit login_admin_path
#          click_on 'Budget Management'
#          click_on 'New Budget Subcategory'
#          fill_in 'Committee', with: '4'
#          fill_in 'Subcategory name', with: 'meeting plates'
#          fill_in 'Subcategory amount', with: '15'
#          fill_in 'Status', with: 'Pending'
#          click_on 'Create Budget subcategory'
#          expect(page).to(have_content('meeting plates'))
#     end
# end
