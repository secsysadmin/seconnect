# frozen_string_literal: true

require 'rails_helper'

RSpec.describe(BudgetCategory, type: :model) do
     subject do
          budget = Budget.create!(name: 'test budget', active: 'true', default: 'false', locked: 'false', fiscal_year: '2022-2023')
          described_class.new(name: 'test budget category', budget_id: budget.id)
     end

     it 'is valid with all valid attributes' do
          expect(subject).to(be_valid)
     end

     it 'is not valid without a name' do
          subject.name = nil
          expect(subject).not_to(be_valid)
     end

     it 'is not valid without a budget id' do
          subject.budget_id = nil
          expect(subject).not_to(be_valid)
     end
end
