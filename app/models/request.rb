class Request < ApplicationRecord
    belongs_to :user
    belongs_to :budget_subcategory, :optional => true
    belongs_to :vendor
    validates :status, presence: true
end

def to_s
    status
end

