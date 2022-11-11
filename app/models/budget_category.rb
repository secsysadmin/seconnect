class BudgetCategory < ApplicationRecord
    validates :name, :budgeted, presence: true
end
