class Request < ApplicationRecord 
    validates :status, presence: true
    STATUSES = [:pending, :in_progress, :approved, :denied]
end

def to_s
    status
end