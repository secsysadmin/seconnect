class AdminRequest < ApplicationRecord
    belongs_to :user
    belongs_to :budget_subcategory, :optional => true
    belongs_to :vendor

    validates: :status, presence: true
    STATUSES = [:submitted, :in_progress, :approved, :denied]
end

def to_s
    status
end
