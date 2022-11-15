# frozen_string_literal: true

require 'rails_helper'

RSpec.describe(BudgetSubcategory, type: :model) do
     subject do
          budget = Budget.create!(name: 'test budget', active: 'true', default: 'false', locked: 'false', fiscal_year: '2022-2023')
          budget_category = BudgetCategory.create!(name: 'test budget category', budget_id: budget.id)
          described_class.new(name: 'test budget subcategory', budgeted: '50.0', budget_category_id: budget_category.id)
     end

     it 'is valid with all valid attributes' do
          expect(subject).to(be_valid)
     end

     it 'is not valid without a name' do
          subject.name = nil
          expect(subject).not_to(be_valid)
     end

     it 'is not valid without a budget category id' do
          subject.budget_category_id = nil
          expect(subject).not_to(be_valid)
     end

     it 'is not valid without a budgeted value' do
          subject.budgeted = nil
          expect(subject).not_to(be_valid)
     end
end
