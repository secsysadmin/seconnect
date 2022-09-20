class Request < ApplicationRecord
    belongs_to :user
    belongs_to :budget_subcategory, :optional => true
    belongs_to :vendor
end
