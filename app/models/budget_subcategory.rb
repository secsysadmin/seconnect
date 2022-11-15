# frozen_string_literal: true

class BudgetSubcategory < ApplicationRecord
     validates :name, :budgeted, :budget_category_id, presence: true
     belongs_to :budget_subcategory, :optional => true
     has_many :request

     def spent
          self.request.where("status = 'complete'").sum('cost')
     end
 
     def pending
          self.request.where("status = 'pending'").sum('cost')
     end
 
     def balance
          budgeted - spent
     end
end
