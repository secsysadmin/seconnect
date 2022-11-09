# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('Create Vendor', type: :feature) do
     it 'new vendor' do
          visit login_admin_path
          click_on 'Vendor Management'
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


#Reimbursement Request 
# RSpec.describe('Create Vendor', type: :feature) do
#      it 'new vendor' do
#          fill_in '', with: ''
#      end
# end