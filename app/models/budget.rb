class Budget < ApplicationRecord
    validates :name, :fiscal_year, presence: true
    has_many :budget_categories
    has_many :budget_subcategories, through: :budget_categories
    
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
