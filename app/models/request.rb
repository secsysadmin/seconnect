class Request < ApplicationRecord
     belongs_to :user
     belongs_to :budget_subcategory
     belongs_to :vendor, optional: true
     validates :status, presence: true
   end
   

def to_s
     status
end
