# frozen_string_literal: true

class BudgetSubcategory < ApplicationRecord
     validates :name, :budgeted, presence: true
     has_many :request
end
