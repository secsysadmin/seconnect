# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('Create user', type: :feature) do
     it 'new user' do
          visit login_path
          click_on 'Create Account'
          fill_in 'First name', with: 'shiv'
          fill_in 'Last name', with: 'patel'
          fill_in 'Street address', with: 'lane drive avenue'
          fill_in 'City', with: 'houston'
          fill_in 'State', with: 'texas'
          fill_in 'Zip code', with: '12345'
          fill_in 'Uin', with: '1234567890'
          fill_in 'Email', with: 'shivhoustontx@gmail.com'
          fill_in 'Password', with: 'TempPassword'
          fill_in 'Phone number', with: '1234567890'
          fill_in 'Committee', with: '3'
          fill_in 'Permission type', with: 'admin'

          click_on 'Create User'
          expect(page).to(have_content('Log In'))
     end
end

RSpec.describe('Create Vendor', type: :feature) do
     it 'new vendor' do
          visit vendors_path
          click_on 'New Vendor'
          fill_in 'Vendor name', with: 'julia'
          fill_in 'Street address', with: '123 street'
          fill_in 'City', with: 'College Station'
          fill_in 'State', with: 'Texas'
          fill_in 'Zip code', with: '77845'
          fill_in 'Email', with: 'juliateleki@tamu.edu'
          fill_in 'Phone number', with: '1234567890'
          click_on 'Create Vendor'
          expect(page).to(have_content('123 street'))
     end
end

#Create Budget Subcategory
RSpec.describe('Create Budget Subcategory', type: :feature) do
     it 'new budget subcategory' do
          visit budget_subcategories_path
          click_on 'New Budget Subcategory'
          fill_in 'Committee', with: '1'
          fill_in 'Subcategory name', with: 'meeting snacks'
          fill_in 'Subcategory amount', with: '15'
          fill_in 'Status', with: 'Pending'
          click_on 'Create Budget subcategory'
          expect(page).to(have_content('meeting snacks'))
     end
end
RSpec.describe('Create Budget Subcategory 2', type: :feature) do
     it 'new budget subcategory' do
          visit budget_subcategories_path
          click_on 'New Budget Subcategory'
          fill_in 'Committee', with: '2'
          fill_in 'Subcategory name', with: 'meeting refreshments'
          fill_in 'Subcategory amount', with: '35'
          fill_in 'Status', with: 'Pending'
          click_on 'Create Budget subcategory'
          expect(page).to(have_content('meeting refreshments'))
     end
end
RSpec.describe('Create Budget Subcategory 3', type: :feature) do
     it 'new budget subcategory' do
          visit budget_subcategories_path
          click_on 'New Budget Subcategory'
          fill_in 'Committee', with: '3'
          fill_in 'Subcategory name', with: 'meeting utensils'
          fill_in 'Subcategory amount', with: '25'
          fill_in 'Status', with: 'Pending'
          click_on 'Create Budget subcategory'
          expect(page).to(have_content('meeting utensils'))
     end
end
RSpec.describe('Create Budget Subcategory 4', type: :feature) do
     it 'new budget subcategory' do
          visit budget_subcategories_path
          click_on 'New Budget Subcategory'
          fill_in 'Committee', with: '4'
          fill_in 'Subcategory name', with: 'meeting plates'
          fill_in 'Subcategory amount', with: '15'
          fill_in 'Status', with: 'Pending'
          click_on 'Create Budget subcategory'
          expect(page).to(have_content('meeting plates'))
     end
end
#Reimbursement Request 
# RSpec.describe('Create Vendor', type: :feature) do
#      it 'new vendor' do
#          fill_in '', with: ''
#      end
# end