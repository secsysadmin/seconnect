# frozen_string_literal: true

require 'rails_helper'

RSpec.describe(Budget, type: :model) do
     subject do
          described_class.new(name: 'test budget', active: 'true', default: 'false', locked: 'false', fiscal_year: '2022-2023')
     end

     it 'is valid with all valid attributes' do
          expect(subject).to(be_valid)
     end

     it 'is not valid without a name' do
          subject.name = nil
          expect(subject).not_to(be_valid)
     end

     it 'is not valid without a fiscal year' do
          subject.fiscal_year = nil
          expect(subject).not_to(be_valid)
     end
end
