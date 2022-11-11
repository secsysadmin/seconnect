require 'rails_helper'

RSpec.describe Vendor, type: :model do
  subject do
    described_class.new(vendor_name: 'test vendor', street_address: '123 Address Street', city: 'College Station', state: 'TX', zip_code: '77840', email: 'testvendor@gmail.com', phone_number: '(512)123-4567' )
  end
  it 'is valid with all valid attributes' do
    expect(subject).to be_valid
  end
end