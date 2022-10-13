# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('Login user', type: :feature) do

     it 'existing user' do
          visit login_path
          click_on 'Google'
          click_on 'Use another account'
          fill_in 'Email or phone', with: 'secbrsuser@gmail.com'
          click_on 'Next'
          fill_in 'Enter your password', with: '#SECbrs23'
          click_on 'Next'
          click_on 'Profile'
          expect(page).to(have_content('Email: secbrsuser@gmail.com'))
          expect(page).to(have_content('Permission type: user'))

     end


end