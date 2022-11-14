# frozen_string_literal: true

class Request < ApplicationRecord
     belongs_to :user
     belongs_to :budget_subcategory
     belongs_to :vendor
end

def to_s
     status
end
