# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    described_class.new(first_name: 'Shiv', last_name: 'Patel', street_address: '1234 Lane Drive', city: 'College Station', state: 'Texas', zip_code: '77840', uin: '12345678', email: 'shiv@gmail.com', phone_number: '1234567890', committee_id: '10', permission_type: 'user', password_digest: 'password')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.first_name = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.last_name = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.street_address = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.city = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.state = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.zip_code = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.uin = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.email = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.phone_number = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.committee_id = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.permission_type = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.password_digest = nil
    expect(subject).not_to be_valid
  end
end
