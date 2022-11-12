class Budget < ApplicationRecord
    validates :name, :fiscal_year, :budgeted, presence: true
    has_many :budget_category
end
