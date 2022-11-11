class Budget < ApplicationRecord
    validates :name, :fiscal_year, :budgeted, presence: true
end
