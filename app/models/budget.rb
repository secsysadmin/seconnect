# frozen_string_literal: true

class Budget < ApplicationRecord
     validates :name, :fiscal_year, presence: true
     has_many :budget_categories
     has_many :budget_subcategories, through: :budget_categories
     has_many :requests, through: :budget_subcategories

     def budgeted
          budget_subcategories.sum('budgeted')
     end

     def spent
          requests.where("status = 'completed'").sum('cost')
     end

     def pending
          requests.where("status = 'pending'").sum('cost')
     end

     def balance
          budgeted - spent
     end
end
