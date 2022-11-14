class Budget < ApplicationRecord
    validates :name, :fiscal_year, presence: true
    has_many :budget_categories
    has_many :budget_subcategories, through: :budget_categories
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
