# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('Login user', type: :feature) do

     it 'new or existing user' do
          visit login_user_path
          click_on 'Profile'
          expect(page).to(have_content('Email: secbrsuser@gmail.com'))
          expect(page).to(have_content('Permission type: user'))
          click_on 'Home'
          click_on 'Logout'
          expect(page).to(have_button('Login with Google Account'))
     end
end

RSpec.describe('Login admin', type: :feature) do

     it 'existing user' do
          visit login_admin_path
          click_on 'Profile'
          expect(page).to(have_content('Email: secbrs23@gmail.com'))
          expect(page).to(have_content('Permission type: admin'))
          click_on 'Home'
          click_on 'Logout'
          expect(page).to(have_button('Login with Google Account'))
     end
end