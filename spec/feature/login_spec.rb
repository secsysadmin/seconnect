# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('Login user', type: :feature) do
     it 'existing user' do
          visit login_path
          fill_in 'email', with: 'shivhoustontx@gmail.com'
          fill_in 'password', with: 'TempPassword'
          click_on 'Log In'
          expect(page).to(have_content('User Home Page'))
     end
end

RSpec.describe('Login user', type: :feature) do
     it 'nonexisting user' do
          visit login_path
          fill_in 'email', with: 'xyz'
          fill_in 'password', with: 'xyz'
          click_on 'Log In'
          expect(page).to(have_content('Something went wrong! Make sure your username and password are correct.'))
     end
end
