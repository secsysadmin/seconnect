require 'rails_helper'


RSpec.describe 'Create user', type: :feature do
    scenario 'new user' do
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
        expect(page).to have_content('Log In')
    end
end