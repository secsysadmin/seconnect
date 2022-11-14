class BudgetCategory < ApplicationRecord
    validates :name, :budget_id, presence: true
    belongs_to :budget, :optional => true
    has_many :budget_subcategories
    
    def budgeted
        self.budget_subcategories.sum('budgeted')
    end

    def spent
    end

    def pending
    end

    def balance
    end
end
