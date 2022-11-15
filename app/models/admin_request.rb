# frozen_string_literal: true

class AdminRequest < ApplicationRecord
     belongs_to :user
     belongs_to :budget_subcategory, optional: true
     belongs_to :vendor

     validates :status, presence: true
     STATUSES = %i[submitted in_progress approved denied].freeze
end

def to_s
     status
end
