# frozen_string_literal: true

require 'rails_helper'

# Create Committee as an admin
RSpec.describe('Admin create committee', type: :feature) do
     it 'new committee' do
          visit login_admin_path
          visit committees_path
          expect(page).to(have_content('Committees'))
          click_on 'New Committee'
          expect(page).to(have_content('New Committee'))
          fill_in 'Committee name', with: 'test committee'
          click_on 'Create Committee'
          expect(page).to(have_content('Committee was successfully created.'))
          expect(page).to(have_content('Committee name: test committee'))
     end
end

# Attempt to create committee as a regular user
RSpec.describe('User create committee', type: :feature) do
     it 'new committee' do
          visit login_user_path
          visit committees_path
          expect(page).to(have_button('Login with Google Account'))
     end
end
