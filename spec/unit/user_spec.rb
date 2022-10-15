# frozen_string_literal: true

# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe(User, type: :model) do
     subject {
          committee = Committee.create(committee_name: "Test", budget: "10")
          described_class.new(first_name: "user", last_name: "brs", street_address: "123 street", city: "College Station", state: "Texas", zip_code: "77845", uin: 123, email: "secbrsuser@gmail.com", phone_number: "123-456-7890", committee_id: committee.id, permission_type: "user", uid: "100003231053752770743"
          )
     }

     it 'is valid with valid attributes' do
          expect(subject).to(be_valid)
     end

     it 'is not valid without a first name' do
          subject.first_name = "user"
          expect(subject).to(be_valid)
     end

     it 'is not valid without a last name' do
          subject.last_name = "brs"
          expect(subject).to(be_valid)
     end

     it 'is not valid without an address' do
          subject.street_address = "123 street"
          expect(subject).to(be_valid)
     end

     it 'is not valid without a city' do
          subject.city = "College Station"
          expect(subject).to(be_valid)
     end

     it 'is not valid without a state' do
          subject.state = "Texas"
          expect(subject).to(be_valid)
     end

     it 'is not valid without a zip_code' do
          subject.zip_code = 77845
          expect(subject).to(be_valid)
     end

     it 'is not valid without an uin' do
          subject.uin = 123
          expect(subject).to(be_valid)
     end

     it 'is not valid without a email' do
          subject.email = "secbrsuser@gmail.com"
          expect(subject).to(be_valid)
     end

     it 'is not valid without a phone_number' do
          subject.phone_number = "123-456-7890"
          expect(subject).to(be_valid)
     end

     it 'is not valid without a committee_id' do
          subject.committee_id = nil
          expect(subject).not_to(be_valid)
     end

     it 'is not valid without a permission_type' do
          subject.permission_type = "user"
          expect(subject).to(be_valid)
     end

     it 'is not valid without a uid' do
          subject.uid = 100003231053752770743
          expect(subject).to(be_valid)
     end
end

RSpec.describe(User, type: :model) do
     subject {
          committee = Committee.create(committee_name: "Test", budget: "10")
          described_class.new(first_name: "admin", last_name: "brs", street_address: "123 street", city: "College Station", state: "Texas", zip_code: "77845", uin: 123, email: "secbrs23@gmail.com", phone_number: "123-456-7890", committee_id: committee.id, permission_type: "admin", uid: "109290679077990497398"
               )
     }

     it 'is valid with valid attributes' do
          expect(subject).to(be_valid)
     end

     it 'is not valid without a first name' do
          subject.first_name = "admin"
          expect(subject).to(be_valid)
     end

     it 'is not valid without a last name' do
          subject.last_name = "brs"
          expect(subject).to(be_valid)
     end

     it 'is not valid without an address' do
          subject.street_address = "123 street"
          expect(subject).to(be_valid)
     end

     it 'is not valid without a city' do
          subject.city = "College Station"
          expect(subject).to(be_valid)
     end

     it 'is not valid without a state' do
          subject.state = "Texas"
          expect(subject).to(be_valid)
     end

     it 'is not valid without a zip_code' do
          subject.zip_code = 77845
          expect(subject).to(be_valid)
     end

     it 'is not valid without an uin' do
          subject.uin = 123
          expect(subject).to(be_valid)
     end

     it 'is not valid without a email' do
          subject.email = "secbrs23@gmail.com"
          expect(subject).to(be_valid)
     end

     it 'is not valid without a phone_number' do
          subject.phone_number = "123-456-7890"
          expect(subject).to(be_valid)
     end

     it 'is not valid without a committee_id' do
          subject.committee_id = nil
          expect(subject).not_to(be_valid)
     end

     it 'is not valid without a permission_type' do
          subject.permission_type = "admin"
          expect(subject).to(be_valid)
     end

     it 'is not valid without a uid' do
          subject.uid = 109290679077990497398
          expect(subject).to(be_valid)
     end
end