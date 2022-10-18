# location: spec/unit/unit_spec.rb
require 'rails_helper'

#title
RSpec.describe Request, type: :model do
    subject do
        described_class.new(user_id: '1', budget_id: '1', category: 'Grocery', subcategory: 'Food', tax_category: 'some',
                            gift: true, cost: '5', items_purchased: 'food1', 
                            vendor_id: '1', status: 'processing')
    end

    it 'is valid with valid attributes' do
        expect(subject).to be_valid
    end

    it 'is not valid without a user id' do
        subject.user_id = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid without a budget id' do
        subject.budget_id = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid without a category' do
        subject.category = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid without a subcategory' do
        subject.subcategory = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid without a tax category' do
        subject.tax_category = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid without a gift' do
        subject.gift = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid without a cost' do
        subject.cost = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid without a item purchased' do
        subject.items_purchased = nil
        expect(subject).not_to be_valid
    end

    # it 'is not valid without a type' do
    #     subject.type = nil
    #     expect(subject).not_to be_valid
    # end

    it 'is not valid without a vendor id' do
        subject.vendor_id = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid without a status' do
        subject.status = nil
        expect(subject).not_to be_valid
    end
end