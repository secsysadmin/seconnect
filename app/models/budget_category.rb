class BudgetCategory < ApplicationRecord
    validates :name, :budget_id, presence: true
    belongs_to :budget, :optional => true
    has_many :budget_subcategories
    has_many :requests, through: :budget_subcategories
    
    def budgeted
        self.budget_subcategories.sum('budgeted')
    end

    def spent
        self.requests.where("status = 'Approved'").sum('cost')
    end

    def pending
        self.requests.where("status = 'In Progress'").sum('cost')
    end

    def balance
        budgeted - spent
    end
end
