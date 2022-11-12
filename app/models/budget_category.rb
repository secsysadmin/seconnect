class BudgetCategory < ApplicationRecord
    validates :name, :budgeted, :budget_id, presence: true
    has_many :budget_subcategory
end
